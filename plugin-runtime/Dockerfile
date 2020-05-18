# flowci/plugin-runtime, the default plugin docker image local task, that only include pyenv with python 3.6.0

FROM ubuntu:18.04

ENV PY_VERSION=3.6.10

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
RUN ${PY_DIR}/python3 -m pip install requests==2.22.0 python-lib-flow.ci==1.0.18