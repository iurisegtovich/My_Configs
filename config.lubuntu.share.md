# REFS
>- https://www.thomas-krenn.com/en/wiki/Simple_Samba_Shares_in_Debian
>- https://help.ubuntu.com/community/How%20to%20Create%20a%20Network%20Share%20Via%20Samba%20Via%20CLI%20%28Command-line%20interface/Linux%20Terminal%29%20-%20Uncomplicated,%20Simple%20and%20Brief%20Way!
>- https://www.strika.co/ubuntu-14-04-how-to-properly-mount-a-cifs-share-as-a-normal-user/

# on the 'share from' machine

## install the programs
sudo apt install samba cifs-utils smbclient

## create the share

### open
sudo gedit /etc/samba/smb.conf

### edit
    [custom]
       path = /home/segtovichisv/storage/ 
       valid users = segtovichisv
       read only = no

#>With this configuration, you will get a share named
#>   public
#> which accesses a partition that has been mounted under:
#>   /media/storage

### restart
sudo service nmbd restart

## find out your IP
ifconfig

## create a user/password grantin access to your share
sudo smbpasswd -a segtovichisv

# on the 'share to' machine

## install the programs
sudo apt install samba cifs-utils smbclient

## list
smbclient -L //<HOST_IP_OR_NAME> -U <user>

## mount

### e.g. access a real machine in the network host
> share "/etc/fstab" "mount.cifs"

    sudo gedit /etc/fstab
      //.../share-tag /home/user1/Desktop/mount-point cifs username=user2,domain=lab,noauto,rw,users 0 0
    mount.cifs //.../share-tag ~/Desktop/mount-point

### e.g. access the virtualbox host
usual IP is //10.0.2.2

#TROUBLESHOOTING

cant connect => recheck /etc/samba/smb.conf (sudo service nmbd restart)

no permission to write => test chown and chgrp in the host machine

"the underlying file system does not support trash" => test chown and chgrp in the host machine



