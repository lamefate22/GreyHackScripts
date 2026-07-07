# GreyHackScripts

A collection of useful custom scripts for the game GreyHack.

### Multiplayer Security Tips

This section contains my personal security recommendations. They may not necessarily be the best approach. All the steps below are performed as `root`.

Basic configuration, applicable in both cases:

```bash
chmod -R o-rwx /
chmod -R g-rwx /
chown -R root /
chgrp -R root /
```

### Server Configuration

This option involves completely blocking access via a guest account or a non-root user.

```bash
chmod g+rx /etc
chmod g+rx /var
chmod g+rx /bin
chmod g+rx /usr
chmod g+rx /boot
chmod g+rx /sys
chmod g+rwx /lib

rm -r /home/guest
```

### Configuration for a Home Computer

This option assumes access via the `root` account and your game account, which is a member of the `root` group.

```bash
chmod g+rx /etc
chmod g+rx /var
chmod g+rx /bin
chmod g+rx /usr
chmod g+rx /boot
chmod g+rx /home
chmod g+rx /sys
chmod o+rx /sys
chmod g+rwx /lib

chmod -R u+rwx /home
chown -R {user} /home/{user}
chgrp -R {user} /home/{user}
```

### How to use

The scripts in the `/server` folder are used to manage SSH connection encryption in the game and significantly improve the encryption provided by the game.

Steps to set up custom encryption:
1. Enable encryption in `/server/conf/sshd.conf`
2. Copy the `encode.src` file to the `/server` folder
3. Compile the `decode.src` file into `decode.bin` and place it in the `/server` folder

The remaining scripts are used as terminal commands and are therefore compiled into `/bin` for ease of use.

### Example

```bash
build mxscan.src /bin
```

This command will compile the source code into an executable file and place it in `/bin`.