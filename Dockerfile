FROM ubuntu:18.04

RUN apt-get update \
  && apt-get install -y --no-install-recommends wget bzip2 unzip \
  && wget http://lilypond.org/download/binaries/linux-64/lilypond-2.20.0-1.linux-64.sh \
  && sh ./lilypond-2.20.0-1.linux-64.sh \
  && rm -f ./lilypond-2.20.0-1.linux-64.sh \
  && mkdir -p /usr/share/fonts/source-han-serif \
  && wget --no-check-certificate -O /tmp/SourceHanSerif.zip https://github.com/adobe-fonts/source-han-serif/releases/download/2.002R/09_SourceHanSerifSC.zip \
  && unzip -d /usr/share/fonts/source-han-serif /tmp/SourceHanSerif.zip \
  && rm /tmp/SourceHanSerif.zip

CMD ["lilypond"]
