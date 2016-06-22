FROM compulsivecoder/ubuntu-mono:latest

RUN git clone https://github.com/CompulsiveCoder/easypost.git /easypost

RUN cd /easypost && sh init.sh && sh build.sh

#RUN apt-get update && apt-get install -y redis-server

# Define mountable directories.
#VOLUME ["/data"]

# Define working directory.
#WORKDIR /data

# Define default command.
CMD ["/bin/bash", "-c", "cd /easypost && sh run.sh"]

EXPOSE 8088
