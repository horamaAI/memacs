#!/bin/sh
# Add org file changes to the repository
REPOS="memacs"
BASE_FOLDER="~/Documents/repos/org/"

for REPO in $REPOS
do
    echo "Repository: $REPO"
    cd ~/git/$REPO
    # Remove deleted files
    git ls-files --deleted -z | xargs -0 git rm >/dev/null 2>&1
    # Add new files
    git add . >/dev/null 2>&1
    git commit -m "$(date)"
done
