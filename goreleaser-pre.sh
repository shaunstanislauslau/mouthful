#!/bin/bash
set +x
rm -rf ./static
# make dirs to accomodate files
mkdir -p ./static


# bundle client
cd ./client
cp ./build/bundle.js ../static/client.js
cd ..

# bundle admin
cd ./admin
cp -r ./build/* ../static/
cd ..
