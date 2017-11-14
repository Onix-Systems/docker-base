#!/usr/bin/sh
set -x

echo "Start init ..."

for i in `ls -v ./server.init/*.sh`; do bash $i; done;

echo "... Finish init"
