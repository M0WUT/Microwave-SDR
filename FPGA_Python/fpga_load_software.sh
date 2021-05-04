#!/bin/bash
mkdir -p python
rm -r python/*
tftp -g -r FPGA_Python/python.zip 192.168.0.22
unzip -q python.zip -d python
python3 python/main.py
