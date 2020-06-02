#!/bin/bash
echo "Initing db."

for f in db/*; do
  case "$f" in
    *.cql)    echo "$0: running $f" && 
      until cqlsh -f "$f"; do 
        >&2 echo "Unavailable: sleeping"; 
        sleep 10;
      done & ;;
  esac
  echo
done
