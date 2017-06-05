# Pull base image
FROM node:latest

RUN apt-get update && apt-get install -y rsync bzip2

# Global install bower
RUN npm set progress=false && \
	npm install -g grunt bower
	echo '{ "allow_root": true }' > /root/.bowerrc

# Binary may be called nodejs instead of node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Define working directory.
WORKDIR /home/jenkins

CMD ["/bin/bash"]
ENTRYPOINT []
