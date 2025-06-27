#!/bin/sh

set -eux

CITY1=Shanghai
CITY2=Xuzhou
CITY3=Nanjing

LANGUAGE="zh-CN"
UNIT=m
UA="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36"

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://wttr.in/$CITY1?format=4\&$UNIT
  
curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://wttr.in/$CITY3?format=4\&$UNIT

curl \
  -H "Accept-Language: $LANGUAGE" \
  -H "User-Agent: $UA" \
  -o result.html \
  https://wttr.in/$CITY3?format=4\&$UNIT
