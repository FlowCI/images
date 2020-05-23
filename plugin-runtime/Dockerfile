# flowci/plugin-runtime, the default plugin docker image local task, that only include pyenv with python 3.6.0

FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

ENV PY_VERSION=3.6.10
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install --no-install-recommends \
    make build-essential ca-certificates openssl libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev \
    wget curl llvm libncurses5-dev xz-utils \
    tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev git -y

RUN curl https://pyenv.run | bash

# init python libs
ENV PATH="/root/.pyenv/bin:$PATH"
RUN eval "$(pyenv init -)"
RUN eval "$(pyenv virtualenv-init -)"

ENV PY_BIN=/root/.pyenv/versions/${PY_VERSION}/bin
ENV PATH="${PY_BIN}:$PATH"

RUN pyenv install ${PY_VERSION}
RUN pyenv global 3.6.10
RUN ${PY_BIN}/python3 -m pip install requests==2.22.0 python-lib-flow.ci==1.0.19

# write to bashrc
# RUN echo -e '\nif command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\n  eval "$(pyenv virtualenv-init -)"\nfi' >> ~/.bashrc

# cleanup
RUN rm /usr/bin/python3*
RUN rm -r /usr/lib/python3*
RUN rm -r /usr/share/python3*
RUN rm -r /usr/local/lib/python3*
RUN rm -r /etc/python3*