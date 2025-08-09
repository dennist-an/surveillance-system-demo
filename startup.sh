#!/bin/bash
# File: run_surveillance.sh

python3 -m venv /var/www/surveillance-pipeline/venv
source /var/www/surveillance-pipeline/venv/bin/activate
pip install -r requirements.txt
python3 /var/www/surveillance-pipeline/app.py &
