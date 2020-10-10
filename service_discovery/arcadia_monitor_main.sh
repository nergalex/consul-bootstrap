#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_monitor_main.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-main",
    "tags": ["v1.0.0"],
    "port": 81,
    "checks": [
      {
        "id": "main",
        "name": "nginx TCP Check",
        "tcp": "localhost:81",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF






