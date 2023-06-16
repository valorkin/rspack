#!/usr/bin/env bash
set -ex

rm -rf ./node_modules/@angular-devkit
rm -rf ./node_modules/@ngtools

cd ../../../angular-cli/
yarn build

npm pack dist/@angular-devkit/build-angular
npm pack dist/@angular-devkit/build-webpack
npm pack dist/@ngtools/webpack

mv angular-devkit-build-angular-16.0.1.tgz ~/work/rspack/_npm_offline
mv angular-devkit-build-webpack-0.1600.1.tgz ~/work/rspack/_npm_offline
mv ngtools-webpack-16.0.1.tgz ~/work/rspack/_npm_offline

cd ~/work/rspack/
pnpm install
