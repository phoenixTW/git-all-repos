#!/usr/bin/env bash

source ./user-interactions.sh

welcome

repositories=$(gh repo list "$ORG" --no-archived -L 1000 --json name,url --jq '.[].name')
directory=$ORG

if [ -d "$directory" ]; then
    alert "Directory $directory already exists."
else
    alert "Creating directory $directory."
    mkdir -p "$directory"
fi

echo "\n\n"

for repo in $repositories[@]; do
    if [ -d "$ORG"/"$repo" ]; then
        alert "Repository $repo already exists.\nProcceeding to pull the repository"
        cd "$ORG"/"$repo" && git pull --rebase && cd ../../
        success "Completed to pull the repository.\n\n"
    else
        alert "Cloning $repo from $ORG\n\n"
        git clone git@github.com:"$ORG"/"$repo" "$directory"/"$repo"
    fi
    echo "---------------------------------------------------------"
done
