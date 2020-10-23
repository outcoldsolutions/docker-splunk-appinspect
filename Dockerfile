FROM python:3-slim

VOLUME /src

RUN apt update && apt install -y wget libxml2-dev libxslt-dev lib32z1-dev libjpeg-dev python3-lxml && apt clean

RUN wget http://download.splunk.com/misc/appinspect/splunk-appinspect-2.3.1.tar.gz -O /tmp/splunk-appinspect.tar.gz && \
    pip install --no-cache /tmp/splunk-appinspect.tar.gz && \
    rm /tmp/splunk-appinspect.tar.gz

WORKDIR /src

CMD splunk-appinspect inspect /src/
