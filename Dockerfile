FROM jenkins/jenkins
USER root

# install docker
RUN apt-get udpate && \
    sudo chmod a+r /etc/apt/keyrings/docker.gpg \
    sudo apt-get update \
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin && \
    sudo apt-get update && \ 
    sudo apt-get install docker-compose-plugin

#    apt-get -y install apt-transport-https \
#    ca-certificates \
#    curl \
#    gnupg2 \
#    software-properties-common && \
#    curl -fsSL https://download.docker.com/linux/$(. /etc/os-lelease; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
#    add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-releases; echo "$ID") \
#    stable" && \
#    apt-get update && \
#    apt-get -y install docker-ce
# RUN curl -L "https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-(uname -s)-$(uname -m)" -o /usr/local/bin/ && chmod +x /usr/local/bin/docker-compose

USER jenkins