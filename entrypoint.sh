#!/bin/bash

if [ -z $APP_NAME ]; then
    echo "env var APP_NAME not set. Using app"
    APP_NAME=app
    REACTOR_APP_DIR=/$APP_NAME
fi

if [ ! -f "$REACTOR_APP_DIR/package.json" ]; then
    echo "Package.json not found. Creating the app."
    echo " (If it isn't the first time you run this image, u fukd up big time)"
    npx create-react-app $APP_NAME
    ls -la
fi

cd $REACTOR_APP_DIR

chown -R 1000:1000 $REACTOR_APP_DIR

npm start
