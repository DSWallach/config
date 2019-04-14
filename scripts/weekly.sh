#!/bin/bash

cd ~/.sel;
git pull -y;
bash ~/.sel/scripts/exercise_quota.sh;
bash ~/.sel/scripts/life_quota.sh;
git add --all -y;
git commit -m 'Weekly update';
git push -y;
