# lubuntu (http://lubuntu.net/)
## 16.04 (LTS) x64 (via torrent: https://help.ubuntu.com/community/Lubuntu/GetLubuntu#Lubuntu_LTS)

# setup

    install:
    [ ] build essentials
    [ ] virtualbox (deb) > sudo dpkg -i ***; sudo apt -f install; sudo dpkg -i ***
    [ ] samba cifs-utils smbclient
    [ ] openjdk-8-jdk
    [ ] netbeans (sh) > chmod +x ***; ./***
    [ ] gedit gedit-plugins
    [ ] gfortran gdb valgrind
    [ ] libreoffice
    [ ] p7zip
    [ ] dropbox (deb) > sudo apt install python-gpgme; sudo dpkg -i ***
        zotero
        zotfile
        chrome
    [ ] anaconda (sh)



# share 
## share "/etc/fstab" "mount.cifs"

sudo gedit /etc/fstab
//**.**.**.**/share-tag /home/user1/Desktop/mount-point cifs username=user2,domain=lab,noauto,rw,users 0 0
mount.cifs //**.**.**.**/share-tag ~/Desktop/mount-point

# config
## lubuntu dropbox system tray solved
    https://superuser.com/questions/1037769/dropbox-system-tray-icon-missing-not-working
    1)    In terminal type ... dropbox stop && dbus-launch dropbox start
    2)    Follow the prompts, if any. Two of my machines responded "Dropbox not installed".
    3)    sudo apt-get install dropbox
    4)    Repeat line 1. Icon appeared. Didn't stay after re-boot.
    5)    Repeat line 1, to get icon.
    6)    Go to Preferences ...General, (Dropbox icon) and un-tick 'Start Dropbox on system startup'.
    7)    Now to 'Default applications for LXSession' (menu ...Preferences)
    8)    Under Autostart, un-tick any previous Dropbox attempts (these can be deleted later).
    9)    Add dbus-launch dropbox start
    10)    Re-boot.
## lubuntu anaconda ~/.bashrc PATH
...
