FROM    node:0.10-onbuild

# Enable EPEL for Node.js
#RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
#
#RUN rpm -Va --nofiles --nodigest
# Install Node.js and npm
#RUN yum install -y nodejs
#RUN yum install -y npm
RUN apt-get install -y git
#RUN apt-get install -y gitcore

#RUN     yum install -y npm

# Bundle app source
COPY . /node-profile-stalker
# Install app dependencies
#RUN cd /; npm install

EXPOSE  8080
CMD ["node", "/router.js"]

ADD /node-profile-stalker