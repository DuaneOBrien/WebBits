#! /usr/bin/env bash

#Get date in YYYY-MM-DD format
DATE=`date +%Y-%m-%d`

#Archive next edition
cp next.json archive/${DATE}.json

#Make next edition the current done
cp next.json current.json

#Clear the next edition
cp templates/clean.json next.json

#Commit and Tag (Done as && commands in case of failure)
git add . && git commit -m "${DATE} edition" && git tag "${DATE}"
