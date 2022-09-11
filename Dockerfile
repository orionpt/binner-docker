FROM arm32v7/ubuntu:22.10

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

WGET https://github.com/replaysMike/Binner/releases/download/v2.0.59/Binner_linux-arm-2.0.59.tar.gz

TAR zxfp ./Binner_linux-arm-2.0.59.tar.gz

sudo chmod +x ./Binner.Web

CMD ./Binner.Web
