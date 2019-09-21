#!/bin/bash

# Install cert for Nginx

cd `dirname $0`
DOMAIN=$1

if [ -z "$DOMAIN" ]; then
  echo 'Domain required'
  exit -1
fi

if [ ! -f "$DOMAIN/fullchain.cer" ]; then
    echo "File not exist: $DOMAIN/fullchain.cer"
    exit -1
fi

if [ ! -f "$DOMAIN/$DOMAIN.key" ]; then
    echo "File not exist: $DOMAIN/$DOMAIN.key"
    exit -1
fi

mkdir -p "/etc/ssl/certs/$DOMAIN"
cp "$DOMAIN/fullchain.cer" "/etc/ssl/certs/$DOMAIN"
cp "$DOMAIN/$DOMAIN.key" "/etc/ssl/certs/$DOMAIN"

echo "Update $DOMAIN successful!"
