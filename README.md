# Dockerfile for wtTunnel (Win-Test Tunnel)

## Build an image

docker build -t wttunnel .

## Run

docker run -d -name wtTunnel -p 7023:23 -e user=myuser -e pass=mypass wttunnel
