# clone of IBM builder at https://github.com/node-red/node-red-docker/blob/master/build-rpi.sh
if [ $# -ne 1 ]; then
    echo $0: usage: build-rpi.sh NODE_RED_VERSION
    exit 1
fi

NODE_RED_VERSION=$1

docker build -f rpi/Dockerfile -t nodered/node-red-docker:rpi .

if [ $? -ne 0 ]; then
    echo "ERROR: Docker build failed for rpi image"
    exit 1
fi
