build:
	docker build --pull -t outcoldsolutions/splunk-appinspect:2.0.1 .
	docker push outcoldsolutions/splunk-appinspect:2.0.1