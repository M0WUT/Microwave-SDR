#!/bin/bash

cd /opt/sdr_gui/
mkdir lib
cd lib
ln -s `find / -name libEGL*` .
ln -s `find / -name libGLESv2*` .
