#!/bin/bash
#
# Script for creating deb package of python-omniorb.
#

OMNI_DIR=`ls -d ../python*/`
cd ${OMNI_DIR}
dpkg-buildpackage -b -us -uc
cd - 

