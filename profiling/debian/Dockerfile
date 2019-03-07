FROM debian:jessie

RUN apt-get update \
    && apt-get install -y \
       gdb \
       strace \
       tcpdump \
       software-properties-common \
       apt-transport-https \
       ca-certificates \
       curl \
       jq \
       sudo \
       python2.7-dbg \
       python-dev \
       python-pip \
       ipython \
    && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository "deb [trusted=yes] https://repo.iovisor.org/apt/xenial xenial-nightly main" \
    && apt-get update \
    && apt-get install -y --allow-unauthenticated bcc-tools \
    && rm -rf /var/lib/apt/lists/*
RUN pip install numpy
RUN sudo sysctl -w kernel.yama.ptrace_scope=1
COPY sample.py sample.py