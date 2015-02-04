FROM poklet/centos-baseimage:latest
MAINTAINER oliveagle@gmail.com

# always goto /root/
WORKDIR /root


# use aliyun repos
RUN rm -rf /etc/yum.repos.d/*.repo
ADD mirrors/centos/aliyun/6/*.repo /etc/yum.repos.d/

RUN yum clean all
RUN yum makecache && yum install -y vim git tig curl tar perf ltrace strace telnet zsh golang && yum -y clean all
RUN chsh -s /bin/zsh

COPY bin /root/bin
COPY key.pub /root/.ssh/authorized_keys

# .oh-my-zsh, .vim 
COPY root_home_tools.el6.tgz /tmp/
RUN tar -xf /tmp/root_home_tools.el6.tgz -C /root && rm /tmp/root_home_tools.el6.tgz
COPY zshrc /root/.zshrc

# TODO: GOROOT cannot be set
#ENV GOROOT /usr/lib/golang
#RUN export GOROOT=/usr/lib/golang

# ENV GOPATH /gopath
ENV HOME /root