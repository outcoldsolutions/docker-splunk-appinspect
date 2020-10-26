FROM python:3-slim

VOLUME /src

# Installation instructions at 
# https://dev.splunk.com/enterprise/docs/developapps/testvalidate/appinspect/splunkappinspectclitool/installappinspect/installappinspectonlinux

RUN apt-get update && \
  apt-get install -y libxml2-dev libxslt-dev lib32z1-dev python-lxml libmagic-dev libjpeg-dev

RUN apt-get install -y wget && \
  rm -rf /var/lib/apt/lists/*

# Download the latest appinspect

RUN wget http://download.splunk.com/misc/appinspect/splunk-appinspect-2.3.1.tar.gz -O /tmp/splunk-appinspect.tar.gz && \
    pip install --no-cache /tmp/splunk-appinspect.tar.gz && \
    rm /tmp/splunk-appinspect.tar.gz

WORKDIR /src

CMD splunk-appinspect inspect /src/
