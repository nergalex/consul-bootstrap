#!/bin/bash
cat << EOF > /etc/consul.d/arcadia_backend.json
{
  "service": {
    "name": "${EXTRA_APP_NAME}-arcadia-backend",
    "tags": ["v1.0.0"],
    "port": 84,
    "checks": [
      {
        "id": "backend",
        "name": "nginx TCP Check",
        "tcp": "localhost:84",
        "interval": "10s",
        "timeout": "1s"
      }
    ]
  }
}
EOF






