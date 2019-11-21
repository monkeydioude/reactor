#!/bin/bash

if [ -z $REACTOR_APP_DIR ]; then
    REACTOR_APP_DIR=/app
fi

if [ ! -f "$REACTOR_APP_DIR/package.json" ]; then
    npx create-react-app app --typescript
    # create-react-app $REACTOR_APP_DIR
fi

cd $REACTOR_APP_DIR

if [ -z $NO_INSTALL ] || [ $NO_INSTALL == false ] || [ ! -d "node_modules" ]; then
    npm install
fi

chown -R 1000:1000 $REACTOR_APP_DIR

npm start
