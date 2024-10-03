#!/bin/sh

curl http://127.0.0.1:9180/apisix/admin/routes/1 -H 'X-API-KEY: edd1c9f034335f136f87ad84b625c8f1' -X PUT -i -d '
{
    "uri": "/org.apache.dubbo.samples.gateway.apisix.DemoService/sayHello",
    "upstream": {
        "discovery_type": "nacos",
        "type": "roundrobin",
        "service_name": "gateway-apisix-triple",
        "discovery_args": {
          "namespace_id": "dev",
          "group_name": "dubbo"
        }
    }
}'

