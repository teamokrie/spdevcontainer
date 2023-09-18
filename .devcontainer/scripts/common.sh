apt-get update && \
apt-get -y install --no-install-recommends \
		g++ \
		gcc \
		libc6-dev \
		make \
		pkg-config \
		libcups2-dev \
		rpm \
		libpoppler-glib-dev \
		clangd \
		iputils-ping dnsutils ripgrep fzf fzy \
		cups && \
apt-get clean -y && rm -rf /var/lib/apt/lists/* && \
su vscode -c "go install honnef.co/go/tools/cmd/staticcheck@2022.1" && \
curl -sS https://starship.rs/install.sh | sh /dev/stdin -y &&\
mkdir -p /home/vscode/.config && \
mv /tmp/library-scripts/starship.toml /home/vscode/.config/ && \
git clone https://github.com/zsh-users/zsh-autosuggestions /home/vscode/.zsh/zsh-autosuggestions && \
mv /tmp/library-scripts/zshrc /home/vscode/.zshrc && \
chown -R vscode:vscode /home/vscode/.config && \
chown -R vscode:vscode /home/vscode/.zsh && \
chown vscode:vscode /home/vscode/.zshrc

