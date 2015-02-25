Why
---
Sometimes you can't run as root and apt-get inside a container could make things easier when running a good old RHEL6 :)


How to use 
----------

On a machine you have root access to, the script use sudo) :
```
git clone https://github.com/gboddin/debprootstrap.git 
cd debprootstrap
./debprootstrap
```

And you end-up with a *build.tar.gz* , now send this build.tar.gz to any linux machine and :

```
tar -xzvf build.tar.gz
build/start-container.sh
```

Tadaaaa you're pseudo root and can use the package manager to install your favorite services \o/

Remarks
-------
Only amd64 is supported right now :)

Thanks
------
* Juju from Arch for the big picture : https://github.com/fsquillace/juju
* Proot.me : http://proot.me/
