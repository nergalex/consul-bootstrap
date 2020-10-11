#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_all.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-all",
    "tags": ["v1.0.0"],
    "port": 81,
    "checks": [
      {
        "id": "main",
        "name": "nginx TCP Check",
        "tcp": "localhost:81",
        "interval": "10s",
        "timeout": "1s"
      },
      {
        "id": "backend",
        "name": "nginx TCP Check",
        "tcp": "localhost:84",
        "interval": "10s",
        "timeout": "1s"
      },
      {
        "id": "app2",
        "name": "nginx TCP Check",
        "tcp": "localhost:82",
        "interval": "10s",
        "timeout": "1s"
      },
      {
        "id": "app3",
        "name": "nginx TCP Check",
        "tcp": "localhost:83",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF





