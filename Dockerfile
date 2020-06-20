FROM amazonlinux:2

RUN yum install python37 -y 
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash - &&\
    yum -y install nodejs &&\
    npm install -g aws-cdk

WORKDIR /temp
COPY requirements-dev.txt .

RUN pip3 install -r requirements-dev.txt
