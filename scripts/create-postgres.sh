#!/usr/bin/env bash

echo "pg_dump -h $1 -p 54320 -U homestead $2 -f $3/$2-`date "+%Y%m%d%H%M%S"`.sql"
pg_dump -h $1 -p 54320 -U homestead $2 -f $3/$2-`date "+%Y%m%d%H%M%S"`.sql
