#Pull base image
FROM dsoukhov/golang-radanalytics.ci

#install nodejs and npm
#nodejs-legacy is required for sym link to node
RUN apt-get install -y nodejs-legacy npm

#install bower
RUN npm set progress=false npm install -g bower
