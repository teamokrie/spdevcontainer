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
		cups && \
apt-get clean -y && rm -rf /var/lib/apt/lists/* \
curl -fsSL https://get.pnpm.io/install.sh | env PNPM_VERSION=7.33.0 sh - \

