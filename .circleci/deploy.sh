#!/usr/bin/env bash
#
# Force-push the built HTML to the `gh-pages` branch.
#

set -e

DEPLOY_DIR=deploy

git config --global push.default simple
git config --global user.email $(git --no-pager show --no-patch --format='%ae' HEAD)
git config --global user.name $CIRCLE_USERNAME

git clone --quiet --branch=gh-pages $CIRCLE_REPOSITORY_URL $DEPLOY_DIR

cd $DEPLOY_DIR
rsync --archive --recursive --verbose --delete ../public/* .

git add --force .
git commit --msg="Deploy build $CIRCLE_BUILD_NUM [ci skip]" || true
git push --force origin gh-pages
