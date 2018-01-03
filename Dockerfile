FROM centos:7.2.1511

ENV container docker
ENV MOLECULE_VERSION 2.5.0

RUN yum -y install epel-release; yum install -y gcc python34-pip python34-devel openssl-devel git; yum clean all;

RUN pip3 install molecule==${MOLECULE_VERSION}
RUN pip3 install docker

CMD [ "/bin/bash" ]