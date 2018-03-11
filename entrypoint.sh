#!/bin/bash

if [ ! -f "./$DIR/package.json" ]; then
    npm install -g create-react-app
    create-react-app $DIR
fi

cd $DIR

if [ ! -d "node_modules" ]; then
    npm install
fi

chown -R 1000:1000 /$DIR

npm start
