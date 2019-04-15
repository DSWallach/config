#!/bin/bash

# Setup
cd ~/.sel;
git pull -y;

# Tasks
task add project:BeA3 tag:Programming due:Tomorrow "Complete one algorithms type problem from some coding site (leetcode, codility, etc)":w

# Commit
git add --all -y;
git commit -m 'Weekly update';
git push -y;
