#!/bin/bash

cd /home/savaliyahet15/website-project

git pull origin main

docker build -t website-app .

docker rm -f website || true

docker run -d -p 8080:80 --name website website-app
