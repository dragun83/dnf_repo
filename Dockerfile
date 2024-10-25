FROM fedora:40

RUN dnf makecache && \
    dnf update -y && \
    dnf install dnf-utils createrepo -y
    
COPY *.repo /etc/yum.repos.d/


