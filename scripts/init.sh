#!/bin/sh

if [ -z "$AZURE_LOGIN" ]; 
then { echo "AZURE_LOGIN env variable must be set for login"; exit 1; } 
fi

if [ -z "$AZURE_PW" ]; 
then { echo "AZURE_PW env variable must be set for password"; exit 1; } 
fi

if [ -z "$TENANT_ID" ]; 
then { echo "TENANT_ID env variable must be set for tenant_id"; exit 1; } 
fi

az login -u $AZURE_LOGIN -p $AZURE_PW --tenant $TENANT_ID --verbose --service-principal