#!/bin/bash

# Determine the value of SITE_HOST based on whether the project is opened in a Codespace
if [ -z ${CODESPACE_NAME+x} ]; then
	SITE_HOST="http://localhost:5003"
else
	SITE_HOST="https://${CODESPACE_NAME}-5003.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
fi

# Replace "localhost:5003" with the value of SITE_HOST in the ai-plugin.json file
sed -i "s#http://localhost:5003#${SITE_HOST}#g" .well-known/ai-plugin.json

# Replace "localhost:5003" with the value of SITE_HOST in the openapi.yaml file
sed -i "s#http://localhost:5003#${SITE_HOST}#g" openapi.yaml
