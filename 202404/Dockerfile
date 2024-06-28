FROM ubuntu:latest

COPY ./09_SourceHanSerifSC.zip /tmp/SourceHanSerif.zip

COPY lilypond-2.23.6-1.linux-64.sh ./

RUN apt-get update \
  && apt-get install -y --no-install-recommends bzip2 unzip \
  && sh ./lilypond-2.23.6-1.linux-64.sh \
  && rm -f ./lilypond-2.23.6-1.linux-64.sh \
  && mkdir -p /usr/share/fonts/source-han-serif \
  && unzip -d /usr/share/fonts/source-han-serif /tmp/SourceHanSerif.zip \
  && rm -f /tmp/SourceHanSerif.zip

CMD ["lilypond"]
