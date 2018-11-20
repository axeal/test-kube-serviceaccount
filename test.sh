#!/bin/sh

while true; do
  TOKEN=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
  URL=https://${KUBERNETES_SERVICE_HOST}:${KUBERNETES_SERVICE_PORT}/api/v1/pods?page=1
  curl https://${KUBERNETES_SERVICE_HOST}:${KUBERNETES_SERVICE_PORT}/api/v1/pods?page=1 --header "Authorization: Bearer $TOKEN" --insecure
  echo "+++++++++"
  echo URL: $URL
  echo TOKEN: $TOKEN
  echo "========="
  sleep 5
done
