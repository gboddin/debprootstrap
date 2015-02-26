Why
---
Sometimes you can't run as root and apt-get inside a container could make things easier when running a good old RHEL6 :)


How to use 
----------

On a machine you have root access to, the script use sudo) :
```
#building part
git clone https://github.com/gboddin/debprootstrap.git 
cd debprootstrap
./debprootstrap <target_arch> <suite>
```

Suites are suites (wheezy,jessie,sid,testing,stable,lucid) supported by cdebootstrap in its debian state ;)

Check https://packages.debian.org/jessie/amd64/cdebootstrap-static/filelist -> /usr/share/cdebootstrap-static/suites

And you end-up with a *installer-suite-<date>.sh* , now send this to any linux machine and :

```
#running part
./installer-jessie-amd64-201502260200.bundle ~/my-debian-jessie
~/my-debian-jessie/start-container
```

Tadaaaa you're pseudo root and can use the package manager to install your favorite services/packages \o/

Remarks
-------
Only amd64 is supported right now :)

Thanks
------
* Juju from Arch for the big picture : https://github.com/fsquillace/juju
* Proot.me : http://proot.me/
