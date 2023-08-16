#!/bin/bash

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt 

uvicorn opendream.server:app --host 0.0.0.0 --reload &

cd webapp/opendream-ui && npm install && npm run start &

wait
