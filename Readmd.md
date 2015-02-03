ole golang development environment
==================================

why?
-----

 golang development environment already very easy to setup enough. but sometimes shit happens.
I messed up the go binary once, which I donot know at the time, and the whole golang environment 
crashed.  I canot get my code built no matter what I did. I checked code again and again, doubted 
about gopath/src pollution, replace golang from one version to another... finally it turns out to 
be a very silly mistake. 
 
so Immutable Infrastructure come to rescue. Make a immutable development environment for all kinds
of project is always a good idea to me. 


what included:
--------------

* runit/sshd - this docker based on poklet/centos-baseimage
* golang 1.3.3
* git & tig
* vim
* oh-my-zsh
* tar
* curl
* telnet
* ltrace
* dtrace
* perf
* ...

usage:
------

```bash
# modify Dockerfile to provide a better yum repo  and replace key.pub with your own rsa pub key

# build image
./build.sh 

# start container as daemon, it will exponse a [PORT] let u ssh login
./run.sh

# login and enjoy
ssh root@dockerhost -p PORT
```
