FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y --no-install-recommends wget bzip2 fonts-arphic-ukai && wget http://lilypond.org/download/binaries/linux-64/lilypond-2.20.0-1.linux-64.sh && sh ./lilypond-2.20.0-1.linux-64.sh && rm -f ./lilypond-2.20.0-1.linux-64.sh

CMD ["lilypond"]


