#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_monitor_all_in_one.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-all-in-one",
    "tags": ["v1.0.0"],
    "port": 80,
    "checks": [
      {
        "id": "main",
        "name": "nginx TCP Check",
        "tcp": "localhost:80",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF
