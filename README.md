Why
---
Debprootstrap allow the creation of debian/ubuntu container installers for most (any?) linux distributions including tar,gzip and base64  (RHEL,Arch,Debian,Slackware,...)

You can run those container as a regular user and install that cutting-edge software from debian-sid you always wanted in your home folder.

DepProotstrap heavily relies on proot (http://proot.me) to achieve chroot/bind/syscall-intercept (well proot) at the user level.

Prebuilt container
------------------
You can download prebuilt containers at http://debproot.siwhine.net/bundles/

There's also the debproot bundle/container manager at https://github.com/gboddin/debproot

Supported container
-------------------
- debian : wheezy, jessie, sid
- ubuntu : vivid, utopic, trusty, precise

How to build a container installer
----------------------------------

On a machine you have root access to, the script uses sudo :
```
#building part, 3 lines, root access still needed to build the image (asked trough sudo by debprootstrap)

user@dev-workstation:~$ git clone https://github.com/gboddin/debprootstrap.git
user@dev-workstation:~$ cd debprootstrap
user@dev-workstation:debprootstrap $ ./debprootstrap amd64 jessie
Detected host arch amd64 (x86_64)
Build for arch amd64
Getting static debootstrap http://http.debian.net/debian/pool/main/c/cdebootstrap/cdebootstrap-static_0.6.4_amd64.deb ...
Extracting static deboostrap from deb package ...
Getting static proot http://static.proot.me/proot-x86_64 ...
And bootstrapping debian to build folder ...
[sudo] password for user:
P: Retrieving Release
P: Retrieving Release.gpg
P: Validating Release
I: Good signature from "Debian Archive Automatic Signing Key (7.0/wheezy) <ftpmaster@debian.org>"
P: Parsing Release
P: Retrieving Packages.gz
.......blah.....
P: Writing apt sources.list
P: Writing hosts
P: Writing resolv.conf
Resetting uid/gid to building user ...
Installing proot and start scripts into container ...
Build is ready, creating rootfs installer ...
Bundle is ready, use "./build-jessie-amd64-201502260235.bundle <DIR>" to install your build in <DIR>
```

And you end-up with a **build-[suite]-[arch]-[date].bundle** installer , now send this to any linux machine and :

```
#running part, 2 lines

user@host:~: ./installer-jessie-amd64-201502260200.bundle ~/my-debian-jessie
Installing in ~/my-debian-jessie ...
Installation done
Run ~/my-debian-jessie/manage <user/admin> to chroot in your new environment
user@host:~: ~/my-debian-jessie/manage admin /bin/bash
root@container:~# id
uid=0(root) gid=0(root) groups=0(root)
root@container:~# apt-get moo
                 (__) 
                 (oo) 
           /------\/ 
          / |    ||   
         *  /\---/\ 
            ~~   ~~   
..."Have you mooed today?"...
root@container:~# 

```

Tadaaaa you're pseudo root and can use the package manager to install your favorite services/packages \o/

Remarks
-------
Suites are suites (wheezy,jessie,sid,testing,stable,precise,trusty) supported by cdebootstrap in its debian state ;)

Check https://packages.debian.org/jessie/amd64/cdebootstrap-static/filelist -> /usr/share/cdebootstrap-static/suites

Thanks
------
* Juju from Arch for the big picture : https://github.com/fsquillace/juju
* Proot.me : http://proot.me/

Build status

master (stable) [![Build Status](https://travis-ci.org/gboddin/debprootstrap.svg?branch=master)](https://travis-ci.org/gboddin/debprootstrap)
develop [![Build Status](https://travis-ci.org/gboddin/debprootstrap.svg?branch=develop)](https://travis-ci.org/gboddin/debprootstrap)
