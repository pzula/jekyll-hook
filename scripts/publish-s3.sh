#!/bin/bash
set -e

# This script is meant to be run automatically
# as part of the jekyll-hook application.
# https://github.com/developmentseed/jekyll-hook

repo=$1
branch=$2
owner=$3
giturl=$4
source=$5
build=$6
bucket=$7
rubypath=$8

# sync site to deployment bucket
aws s3 sync $build/ s3://$bucket/ --delete
