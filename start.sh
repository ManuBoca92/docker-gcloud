#!/bin/bash
app="ebonom.flask"
# build dockerfile
docker build -t ${app} .
# deploy docker app
docker run -d -p 5000:5000 --name=${app} ${app}
