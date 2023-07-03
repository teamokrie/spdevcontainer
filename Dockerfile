FROM mcr.microsoft.com/devcontainers/go

COPY ./scripts/*.sh /tmp/library-scripts/

RUN bash /tmp/library-scripts/common.sh

