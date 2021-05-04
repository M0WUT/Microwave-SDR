#!/bin/bash

rm ethertest
tftp -g -r ethertest 192.168.0.22
chmod 777 ethertest
./ethertest
