# Image with AppInspect

[Overview of Splunk AppInspect](http://dev.splunk.com/view/appinspect/SP-CAAAE9U)

> Splunk AppInspect evaluates your Splunk app against a set of Splunk-defined
criteria so that you can be assured of its quality and robustness. AppInspect
runs various checks on your app package, and then produces a report that clearly
details any missed criteria. AppInspect ensures that your Splunk app is ready
for production use on your own Splunk Enterprise instance, or for submission
to Splunkbase as either a standard or certified app.

## Version

```
outcoldsolutions/splunk-appinspect:2.3.1
```

## How to use

```
docker pull outcoldsolutions/splunk-appinspect:2.3.1

```

Run next command in the folder, that contains Splunk applications

```
docker run --volume $(pwd):/src --rm outcoldsolutions/splunk-appinspect:2.3.1
```