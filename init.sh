#!/bin/env sh
direnv allow
rm -rf ./.git
git init
spago build
