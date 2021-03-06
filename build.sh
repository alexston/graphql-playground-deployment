#!/bin/sh
set -e

cd graphql-playground/packages/graphql-playground-react
git submodule update --init
yarn
yarn build
cd ../../..

rm -rf dist
mkdir -p dist/static/css
mkdir -p dist/static/js
cp graphql-playground/packages/graphql-playground-react/build/static/css/index.css dist/static/css/index.css
cp graphql-playground/packages/graphql-playground-react/build/static/js/middleware.js dist/static/js/middleware.js
cp graphql-playground/packages/graphql-playground-react/build/favicon.png dist/favicon.png
