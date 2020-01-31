#!/bin/bash
#
# This script applies a patch for creating a deb package
# for Python3 of python-omniorb.
#

OMNI_DIR=`ls -d ../python*/`
OMNI_NAME=`echo ${OMNI_DIR} | sed 's/\///g' | sed 's/..//'`
echo ${OMNI_NAME}
touch ${OMNI_DIR}/debian/omniidl-python3.install
touch ${OMNI_DIR}/debian/python3-omniorb-omg.install
touch ${OMNI_DIR}/debian/python3-omniorb.install
 
patch -d ${OMNI_DIR}/debian < ${OMNI_NAME}_python3.patch
