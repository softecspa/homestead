#!/usr/bin/env bash

dumper="mysqldump"
if dumper_loc="$(which "$dumper")" && [ -x "$dumper_loc" ]; then
  DATE=`date "+%Y%m%d%H%M%S"`

  echo "$dumper_loc -h $1 -P 33060 -u homestead -psecret $2 > $3/$2-$DATE.sql"
  $dumper_loc -h 127.0.0.1 -P 33060 -u homestead -psecret $2 > $3/$2-$DATE.sql
else 
  echo "$dumper not found"
fi
