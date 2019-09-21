#!/bin/bash

cd `dirname $0`
DOMAIN=$1

if [ -z "$DOMAIN" ]; then
  echo 'Domain required'
  exit -1
fi

if [ ! -f "$DOMAIN/$DOMAIN.cer" ]; then
    echo "File not exist: $DOMAIN/$DOMAIN.cer"
    exit -1
fi

if [ ! -f "$DOMAIN/$DOMAIN.key" ]; then
    echo "File not exist: $DOMAIN/$DOMAIN.key"
    exit -1
fi

mkdir -p "/etc/ssl/certs/$DOMAIN"
cp "$DOMAIN/$DOMAIN.cer" "/etc/ssl/certs/$DOMAIN"
cp "$DOMAIN/$DOMAIN.key" "/etc/ssl/certs/$DOMAIN"
