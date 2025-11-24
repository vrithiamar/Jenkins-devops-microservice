FROM jenkins/jenkins:2.528.2-jdk21
USER root
RUN apt-get update && apt-get install -y lsb-release
RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
RUN apt-get update && apt-get install -y docker-ce-cli
USER jenkins
<<<<<<< HEAD
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow json-path-api"
=======
RUN jenkins-plugin-cli --plugins "blueocean docker-workflow json-path-api"
>>>>>>> f01d1340e024d24f22d759f2d47da44b080df8e5
