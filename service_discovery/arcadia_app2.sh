#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_app2.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-app2",
    "tags": ["v1.0.0"],
    "port": 82,
    "checks": [
      {
        "id": "app2",
        "name": "nginx TCP Check",
        "tcp": "${LOCAL_IPV4}:82",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF
