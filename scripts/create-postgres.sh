#!/usr/bin/env bash

if ! su postgres -c "psql $DB -c '\q' 2>/dev/null"; then
  echo postgres -c "createdb -O homestead '$DB'"
  su postgres -c "createdb -O homestead '$DB'"
fi
