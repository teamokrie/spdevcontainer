FROM mcr.microsoft.com/devcontainers/go:1.18-bullseye

COPY ./scripts/* /tmp/library-scripts/

RUN bash -i /tmp/library-scripts/common.sh
RUN su vscode -c "umask 0002 && . /usr/local/share/nvm/nvm.sh && nvm install --lts 16 2>&1"
RUN su vscode -c "curl -fsSL https://get.pnpm.io/install.sh | env PNPM_VERSION=7.33.0 SHELL=`which zsh` sh -"

