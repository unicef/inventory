#!/usr/bin/env bash
#
# Force-push the built HTML to the `gh-pages` branch.
#

set -eu

DEPLOY_DIR=~/project

# trust GitHub server keys
if [[ ! -d ~/.ssh/ ]]; then
  mkdir ~/.ssh/
fi
ssh-keyscan github.com >> ~/.ssh/known_hosts

# stage generated HTML for GitHub Pages
git clone --quiet --branch=gh-pages "$CIRCLE_REPOSITORY_URL" "$DEPLOY_DIR"
rsync --archive --recursive --verbose --remove-source-files $HOME/hugo/$CIRCLE_PROJECT_REPONAME/public/* "$DEPLOY_DIR"

# git client setup
cd "$DEPLOY_DIR"
git config --global push.default simple
git config --global user.email "$(git --no-pager show --no-patch --format='%ae' HEAD)"
if [ -z $CIRCLE_USERNAME ]; then
  git config --global user.name "$CIRCLE_USERNAME"
else
  git config --global user.name "Committer not registered on CircleCI"
fi
git config --global --get-regexp "(push.default|user.(email|name))"

# force push to GitHub Pages
git add --force .
git commit --verbose --message="Deploy build $CIRCLE_BUILD_NUM [ci skip]" || true
git push --verbose --force origin gh-pages
