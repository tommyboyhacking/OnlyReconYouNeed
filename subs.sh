#!/bin/bash

# Variables
DOMAIN=$1
SUBFINDER_LIST=$1_$(date +%F)_'subs.txt'
HTTPX_LIST=$1_$(date +%F)_'httpx.txt'


subfinder -d $DOMAIN > $SUBFINDER_LIST

httpx -l $SUBFINDER_LIST -sc --title >> $HTTPX_LIST
