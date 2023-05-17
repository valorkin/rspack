#!/usr/bin/env bash

#pnpm unlink -r
rm -rf node_modules/@angular-devkit/build-angular node_modules/esbuild

cd ~/work/angular/angular-cli/
yarn build
#cd ~/work/rspack/rspack/examples/angular-15/
cd ~/work/rspack/rspack/
#pnpm link ~/work/angular/angular-cli/dist/@angular-devkit/build-angular/
pnpm install
