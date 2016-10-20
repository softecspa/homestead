#!/usr/bin/env bash

dumper="pg_dump"
if dumper_loc="$(which "$dumper")" && [ -x "$dumper_loc" ]; then
  DATE=`date "+%Y%m%d%H%M%S"`

  echo "$dumper_loc -h $1 -p 54320 -u homestead $2 -f $3/$2-$DATE.sql"
  $dumper_loc -h $1 -p 54320 -U homestead $2 -f $3/$2-$DATE.sql
else 
  echo "$dumper not found"
fi
