# Copyright (c) 2022 Oracle and/or its affiliates.
# All rights reserved. The Universal Permissive License (UPL), Version 1.0 as shown at http://oss.oracle.com/licenses/upl
# !/bin/sh

if [ ! -d "./venv" ] 
then
    echo "venv not present. Creating.."
    echo '============== Virtual Environment Creation =============='
    python3 -m venv venv
    source venv/bin/activate

    echo '============== Upgrading pip3 =============='
    pip3 install --upgrade pip

    echo '============== Installing app dependencies =============='
    pip3 install -r requirements.txt
fi

source "./venv/bin/activate"
python3 collector.py $1 $2 $3 $4  