FROM jenkins/jenkins
USER root

# install docker
RUN sudo apt-get update && sudo apt-get upgrade -y && \
    curl -fsSL https://get.docker.com -o get-docker.sh \
    sh get-docker.sh \
    sudo usermod -aG docker jenkins && \
    apt-get update && \
    apt-get -y install docker-ce
RUN curl -L "https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-(uname -s)-$(uname -m)" -o /usr/local/bin/ && chmod +x /usr/local/bin/docker-compose

USER jenkins