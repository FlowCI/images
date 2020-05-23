FROM debian:8-slim

ENV PY_VERSION=3.6.10
ENV TARGET_VOLUME=/target
ENV WORKSPACE=/ws
ENV LIB_DIR=/ws/lib
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install --no-install-recommends \
    make build-essential ca-certificates openssl libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev \
    wget curl llvm libncurses5-dev xz-utils \
    tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git -y

RUN curl https://pyenv.run | bash

ENV PATH="/root/.pyenv/bin:$PATH"
RUN eval "$(pyenv init -)"
RUN eval "$(pyenv virtualenv-init -)"

ENV PY_DIR=/root/.pyenv/versions/${PY_VERSION}/bin
RUN pyenv install ${PY_VERSION}
RUN ${PY_DIR}/python3 -m pip install requests==2.22.0 python-lib-flow.ci==1.0.19

RUN mkdir -p ${WORKSPACE}
RUN mkdir -p ${LIB_DIR}

COPY init.sh ${WORKSPACE}
COPY init-pyenv-volume.sh ${WORKSPACE}

RUN cp /usr/lib/x86_64-linux-gnu/libssl.a ${LIB_DIR}
RUN cp /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 ${LIB_DIR}
RUN cp /usr/lib/x86_64-linux-gnu/libssl3.so ${LIB_DIR}

RUN cp /usr/lib/x86_64-linux-gnu/libcrypto.a ${LIB_DIR}
RUN cp /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 ${LIB_DIR}

WORKDIR ${WORKSPACE}
