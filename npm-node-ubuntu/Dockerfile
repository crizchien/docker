FROM docker.io/ubuntu:24.04
MAINTAINER Criz

ADD entrypoint.tar.gz /usr/local/bin/.

SHELL ["/bin/bash", "--login", "-c"]
RUN echo 'tzdata tzdata/Areas select Asia' | debconf-set-selections \
 && echo 'tzdata tzdata/Zones/Asia select Taipei' | debconf-set-selections \
 && apt update \
 && apt install -y vim git curl \
 && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash \
 && . /root/.nvm/nvm.sh \
 && nvm install 12 \
 && nvm install 14 \
 && nvm install 16 \
 && nvm install 18 \
 && nvm install 20 \
 && nvm install 22 \
 && nvm alias default 22 \
 && nvm use default \
 && mkdir /workspace \
 && chmod a+x /usr/local/bin/entrypoint.sh

WORKDIR /workspace

ENTRYPOINT ["entrypoint.sh"]
