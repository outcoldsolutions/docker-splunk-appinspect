build:
	docker build --pull -t outcoldsolutions/splunk-appinspect:1.7.2 .
	docker push outcoldsolutions/splunk-appinspect:1.7.2