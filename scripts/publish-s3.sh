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
# S3 bucket
bucket=$7
rubypath=$8

  # add repo name to _sites
  touch /tmp/$repo
  aws s3 cp /tmp/$repo s3://$bucket/_sites/
  rm /tmp/$repo

  # if not root repo, sync to subdirectory
  aws s3 sync $build/ s3://$bucket/$repo/ --delete

fi
