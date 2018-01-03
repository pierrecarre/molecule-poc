FROM centos:7.2.1511

ENV container docker
ENV MOLECULE_VERSION 2.5.0

RUN yum -y install epel-release; yum install -y gcc python-pip python-devel openssl-devel git; yum clean all;

RUN pip install molecule==${MOLECULE_VERSION}

CMD [ "/bin/bash" ]