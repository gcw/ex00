#!/usr/bin/env ksh93

IFS="|"
counter=0
while read -A line ; do
  if [[ -n ${line[1]} ]] ; then 
    this_like+=${line[1]%%+(\s)}
    this_dislike+=${line[2]%%+(\s)}
  else
    print "like ${counter}: ${this_like# }"
    print "dislike ${counter}: ${this_dislike# }"
    unset this_like
    unset this_dislike
    ((counter++))
  fi
done
