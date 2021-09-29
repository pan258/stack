FROM ubuntu:20.04

# Updating Ubuntu packages
RUN apt-get update -y

# Installing Python
RUN apt-get install python3.8 -y
RUN apt-get install curl -y
RUN apt -qq install python3-pip -y
RUN pip3 install osquery
RUN pip3 install requests

# Install Osquery
RUN curl -O https://pkg.osquery.io/deb/osquery_4.9.0-1.linux_amd64.deb
RUN dpkg -i -E osquery_4.9.0-1.linux_amd64.deb

ENTRYPOINT ["tail", "-f", "/dev/null"]
