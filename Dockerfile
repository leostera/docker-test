# Get image
FROM  centos:centos6

# Setup yum and npm
RUN   rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN   yum install -y npm

# Copy project and install deps
COPY  . /src
RUN   cd /src; npm install

# Make it run!
EXPOSE 8080
CMD ["node", "/src/index.js"]
