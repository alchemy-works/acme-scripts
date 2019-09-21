#!/bin/bash

cd `dirname $0`
DOMAIN=$1

if [ -z "$str" ]; then
  echo 'Domain required'
  exit -1
fi

if [ ! -f "~/dp-acme/$DOMAIN/$DOMAIN.cer" ]; then
    echo "File not exist: $DOMAIN/$DOMAIN.cer"
    exit -1
fi

if [ ! -f "$DOMAIN/$DOMAIN.key" ]; then
    echo "File not exist: $DOMAIN/$DOMAIN.key"
    exit -1
fi

mkdir -p "/etc/ssl/cert/$DOMAIN"
cp "$DOMAIN/$DOMAIN.cer" "/etc/ssl/cert/$DOMAIN"
cp "$DOMAIN/$DOMAIN.key" "/etc/ssl/cert/$DOMAIN"
