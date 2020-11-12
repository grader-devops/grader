#!/bin/bash
#script add new repo to github.com to your repo. Before you need generation new Personal access tokens with access to repo. 
#example ./add_new_repo.sh <token> <repo name> 

if command -v jq >/dev/null 2>&1; then
  echo "jq parser found";
else
  echo "this script requires the 'jq' json parser (https://stedolan.github.io/jq/).";
  exit 1;
fi;

if [ -z "$1" ]; then
    echo "Required Authorization Token first";
    exit 1;
fi;

if [ -z "$2" ]; then
    echo "Set name repo two";
    exit 1;
fi;

# TOKEN="$1";
# NAME="$2";
# PREFIX="ssh_url_to_repo";

curl -H "Authorization: Bearer $1" https://api.github.com/user/repos -d'{"name":"'$2'"}'

curl -H "Authorization: Bearer $1" https://api.github.com/user/repos | jq --arg p "clone_url" '.[] | .[$p]' | grep $2 | xargs -L1 git clone

cd $2