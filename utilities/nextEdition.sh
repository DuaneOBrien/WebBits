#! /usr/bin/env bash

#Get date in YYYY-MM-DD format
DATE=`date +%Y-%m-%d`

#Archive next edition
cp next.json archive/${DATE}.json

#Make next edition the current done
cp next.json current.json

#Clear the next edition
cat > next.json << EOF
[
  {
    "category": "Featured",
    "headline": "",
    "comment": "",
    "urls": [
      ""
    ]
  },
  {
    "category": "",
    "headline": "",
    "comment": "",
    "urls": [
      ""
    ]
  }
]
EOF