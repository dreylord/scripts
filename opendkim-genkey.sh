#!/bin/sh

DKIM_DOMAIN=ic-iskra.ru
SELECTOR=iciskraex

mkdir -p /etc/opendkim/${DKIM_DOMAIN}

# Generate Keys
opendkim-genkey -D /etc/opendkim/${DKIM_DOMAIN}/ --domain ${DKIM_DOMAIN} --selector ${SELECTOR}

if test -d /etc/opendkim/${DKIM_DOMAIN}
then 
    chown :opendkim /etc/opendkim/${DKIM_DOMAIN}/*
    chmod g+rw /etc/opendkim/${DKIM_DOMAIN}/*
fi

# TrustedHosts
echo "*.${DKIM_DOMAIN}" >> /etc/opendkim/TrustedHosts

# KeyTable
echo "${SELECTOR}._domainkey.${DKIM_DOMAIN} ${DKIM_DOMAIN}:${SELECTOR}:/etc/opendkim/${DKIM_DOMAIN}/${SELECTOR}.private" >> /etc/opendkim/KeyTable

# SigningTable
echo "*${DKIM_DOMAIN} ${SELECTOR}._domainkey.${DKIM_DOMAIN}" >> /etc/opendkim/SigningTable
