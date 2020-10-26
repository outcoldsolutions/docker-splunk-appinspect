build:
	docker build --pull -t outcoldsolutions/splunk-appinspect:2.3.1 .
	docker push outcoldsolutions/splunk-appinspect:2.3.1