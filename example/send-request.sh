#!/bin/sh

#curl -i http://127.0.0.1:9080/org.apache.dubbo.samples.gateway.apisix.DemoService/sayHello?name=aliuql

curl --header "Content-Type: application/json" \
	--data '["dubbo"]' \
	http://127.0.0.1:9080/org.apache.dubbo.samples.gateway.apisix.DemoService/sayHello

