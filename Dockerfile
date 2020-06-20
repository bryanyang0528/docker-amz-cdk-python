FROM amazonlinux:2

WORKDIR /temp
RUN yum install python37 -y 
RUN curl --silent --location https://rpm.nodesource.com/setup_12.x | bash - &&\
    yum -y install nodejs &&\
    npm install -g aws-cdk

COPY requirements-dev.txt .
RUN pip3 install -r requirements-dev.txt

WORKDIR /
