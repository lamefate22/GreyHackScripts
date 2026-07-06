crypto = include_lib("/lib/crypto.so")

if not crypto then
	exit("Error: Missing crypto library.")
end if

if params.len != 1 then
    usage = [
        "Usage:",
        "  decipherall [filePath] - decipher all file lines",
    ].join("\n")

    exit(usage)
end if

GetPassword = function(loginString)
    if loginString.len != 2 then
        exit("Wrong syntax. Only accepts login:password per line.")
    end if

    password = crypto.decipher(loginString[1])
    return password
end function

CheckFileErrors = function(fileObj)
    if not fileObj then exit("Error: File not found.")
    if fileObj.is_binary then exit("Error: Can't read. Binary file")
    if fileObj.get_content.len == 0 then exit("Error: No users found.")
    if not fileObj.has_permission("r") then exit("Error: Can't read file. Permission denied.")
end function

DecipherFile = function(fileObj)
    content = fileObj.get_content
    lines = content.split("\n")
    result = []

    print("-> total of " + lines.len + " lines")
    for i in range(0, lines.len - 1)
        line = lines[i]

        loginString = line.split(":")
        login = loginString[0]

        print("-> " + login)
        decryptedPassword = GetPassword(loginString)
        if decryptedPassword == null then
            print("-> error: unable to decipher string " + str(i + 1))
            result.push(line)
        else
            result.push(login + ":" + decryptedPassword)
        end if
    end for

    return result.join(char(10))
end function

file = get_shell.host_computer.File(get_abs_path(params[0]))

CheckFileErrors(file)
decrypted = DecipherFile(file)

if decrypted != null then
	clear_screen()
    print("<color=#5C6B73>----- Decrypted result -----</color>")
    print(decrypted)
end if