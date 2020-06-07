#!/bin/bash
if ping -c 1 -W 2 www.google.com > /dev/null; then
  echo 'ONLINE'
else
  echo 'OFFLINE'
fi

