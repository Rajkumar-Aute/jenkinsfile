FROM jenkins/jenkins
USER root

# install docker
RUN apt-get update && \
apt-get -y install apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
RUN curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh get-docker.sh && \
    apt-get update && \
    apt-get -y install docker-ce
RUN usermod -aG docker jenkins
# RUN curl -L "https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-(uname -s)-$(uname -m)" -o /usr/local/bin/ && chmod +x /usr/local/bin/docker-compose

USER jenkins