crypto = include_lib("/lib/crypto.so")

GetPassword = function(encryptedPassword)
    decryptedPassword = crypto.decipher(encryptedPassword)
    return decryptedPassword
end function

if not crypto then
    exit("Error: Missing crypto library.")
end if

if params.len < 1 then
    usage = [
        "Usage:",
        "  qdecipher [encryptedPassword] - quick password decipher",
    ].join("\n")

    exit(usage)
end if

password = GetPassword(params[0])
print("-> password: " + password)