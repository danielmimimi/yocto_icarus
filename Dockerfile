
FROM ubuntu:focal
# AVOID USER INTERACTION
ENV DEBIAN_FRONTEND=noninteractive

# UPDATE
RUN apt-get update
RUN apt install -y gawk wget git-core diffstat unzip texinfo \
    gcc-multilib build-essential chrpath socat cpio python python3 \
    python3-pip python3-pexpect xz-utils debianutils iputils-ping \
    libsdl1.2-dev xterm tar locales net-tools rsync sudo nano curl \
    docker.io

# RUN apt install -y apt-transport-https ca-certificates software-properties-common
# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
# RUN apt-cache policy docker-ce
# RUN apt install -y docker-ce
# RUN usermod -aG docker ${USER}
# RUN echo systemctl status docker

# CLONE REPO
# RUN git clone https://source.codeaurora.org/external/imx/imx-docker
# RUN cd imx-docker
COPY /imx-docker /imx-docker

# CREATE VIRTUAL LINK
RUN cd imx-docker/ && ln -sf imx-5.10.72-2.2.0/env.sh env.sh

# RUN WITH docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock  focal:buildforyoctor
CMD ["bash"]

