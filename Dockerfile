FROM amd64/ubuntu:latest
EXPOSE 8085

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:savoury1/ffmpeg4
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y unzip
RUN apt-get install -y ffmpeg

RUN mkdir -p /opt/hlsp
VOLUME [ "/opt/hlsp" ]
COPY index.sh .
ENTRYPOINT [ "./index.sh" ]




