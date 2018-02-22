#! /bin/bash

if [ ! -d "$APP" ]; then
    npm install -g create-react-app
    create-react-app $DIR
fi

cd $DIR
npm install
npm start
