FROM python:2

VOLUME /src

RUN wget http://download.splunk.com/misc/appinspect/splunk-appinspect-1.7.0.tar.gz -O /tmp/splunk-appinspect.tar.gz && \
    pip install --no-cache /tmp/splunk-appinspect.tar.gz && \
    rm /tmp/splunk-appinspect.tar.gz

WORKDIR /src

CMD splunk-appinspect inspect /src/
