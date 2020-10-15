#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_app2.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-app3",
    "tags": ["v1.0.0"],
    "port": 83,
    "checks": [
      {
        "id": "app3",
        "name": "nginx TCP Check",
        "tcp": "${LOCAL_IPV4}:83",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF






