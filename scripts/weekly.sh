#!/usr/bin/bash

cd /home/david/.sel;
git pull;
bash scripts/exercise.sh;
bash scripts/life.sh;
git add --all;
git commint -m 'Weekly update';
git push;
