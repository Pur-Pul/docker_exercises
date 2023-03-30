FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get -y install curl
COPY website_script.sh .
RUN chmod +x website_script.sh
CMD ./website_script.sh