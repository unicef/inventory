#!/usr/bin/env bash
#
# Force-push the built HTML to the `gh-pages` branch.
#

set -e

DEPLOY_DIR=deploy

# git client setup
git config --global push.default simple
git config --global user.email $(git --no-pager show --no-patch --format='%ae' HEAD)
git config --global user.name $CIRCLE_USERNAME

# clone git repo with generated HTML
git clone --quiet --branch=gh-pages $CIRCLE_REPOSITORY_URL $DEPLOY_DIR

# keep only the built HMTL
cd $DEPLOY_DIR
rsync --archive --recursive --verbose --remove-source-files $HUGO_BUILD_DIR .
rmdir public/

# force push to GitHub Pages
git add --force .
git commit --msg="Deploy build $CIRCLE_BUILD_NUM [ci skip]" || true
git push --force origin gh-pages
