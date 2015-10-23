FROM ubuntu
MAINTAINER Guilhem Lettron <guilhem@themecloud.io>

RUN apt-get update && apt-get install -y --force-yes software-properties-common && \
  add-apt-repository -y ppa:h2o-maintainers/stable && \
  apt-get purge -y --force-yes software-properties-common && \
  apt-get -y --force-yes autoremove && apt-get clean
RUN apt-get update && apt-get install -y --force-yes h2o-server && apt-get clean

ENTRYPOINT ["h2o"]
