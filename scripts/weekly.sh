#!/bin/bash

# Setup
cd ~/.sel;
git pull -y;

##  Tasks

# Blog
task add project:blog.post tag:weekly due:Sunday Write one blog post
task add project:blog.comment tag:weekly due:Sunday "Comment on someone else's blog post"
task add project:blog.comment tag:weekly due:Sunday "Comment on someone else's blog post"
task add project:blog.comment tag:weekly due:Sunday "Comment on someone else's blog post"

# Real Estate
task add project:income.rental tag:weekly due:Sunday "Find a deal in the Hudson Valley"
task add project:income.rental tag:weekly due:Sunday "Find a deal in the Hudson Valley"
task add project:income.rental tag:weekly due:Sunday "Find a deal in the Hudson Valley"


# Programming
task add project:BeA3 tag:Programming due:Sunday "Complete one medium algorithms type problem from some coding site (leetcode, codility, etc)"
task add project:BeA3 tag:Programming due:Sunday "Complete one medium algorithms type problem from some coding site (leetcode, codility, etc)"
task add project:BeA3 tag:Programming due:Sunday "Complete one hard algorithms type problem from some coding site (leetcode, codility, etc)"

# Cycling
task add project:exercise tag:weekly due:Sunday Minimum one hour cycling;
task add project:exercise tag:weekly due:Sunday Minimum one hour cycling;
task add project:exercise tag:weekly due:Sunday Minimum two hour cycling;

# Gym
task add project:exercise tag:weekly due:Sunday Leg day with core;
task add project:exercise tag:weekly due:Sunday Arm day with core;
task add project:exercise tag:weekly due:Sunday Leg day with six rounds of arms on the bag;
task add project:exercise tag:weekly due:Sunday Arm day with six rounds of kicks on the bag;

# Commit
git add --all -y;
git commit -m 'Weekly update';
git push -y;
