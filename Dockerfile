# Use the latest Go version
FROM golang:1.21

# Install Node.js 20.x (latest LTS as of October 2024)
RUN apt-get update && apt-get install -y curl \
  && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /copilot
COPY . .

# Set Go proxy to direct
RUN go env -w GOPROXY=direct

# Build the binaries using Makefile
RUN make release
