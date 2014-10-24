#!/bin/bash

cd $PREFIX/bin
if [[ ! -a npm ]]; then
  ln -s ../lib/node_modules/npm/bin/npm-cli.js npm
fi
