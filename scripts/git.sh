#!/usr/bin/env bash

msg=$1

git add .
git commit -am "$msg"
git push
