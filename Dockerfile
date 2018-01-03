FROM centos:7.2.1511

ENV container docker

RUN yum -y install epel-release; yum install -y gcc python-pip python-devel openssl-devel git; yum clean all

COPY molecule-requirements.txt /
RUN pip install -r /molecule-requirements.txt

CMD [ "/bin/bash" ]