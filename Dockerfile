FROM ubuntu:16.04

RUN echo 'deb http://rep.logentries.com/ xenial main' > /etc/apt/sources.list.d/logentries.list \
 && gpg --keyserver pgp.mit.edu --recv-keys C43C79AD && gpg -a --export C43C79AD | apt-key add - \
 && apt-get update -qqy \
 && apt-get install logentries logentries-daemon -y

WORKDIR /app
ADD le.conf /etc/le/config
ADD entrypoint.sh /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["le", "monitor"]
