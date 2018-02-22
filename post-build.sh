#! /bin/bash

while [ `curl -s -o /dev/null -w '%{http_code}' localhost:3000` != 200 ]; do
    sleep 3
done

sudo chown -R $USER:$USER ../app
