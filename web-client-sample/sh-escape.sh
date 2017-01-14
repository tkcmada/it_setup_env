#!/bin/bash
q="'" qq='"'
for s in "$@"; do
  a+=("'${s//$q/$q$qq$q$qq$q}'")
done
echo "${a[*]}"
