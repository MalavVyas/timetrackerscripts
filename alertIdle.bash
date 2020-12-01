#!/bin/bash

idle=false
idleAfter=60000     # consider idle after 3000 ms

while true; do
  idleTimeMillis=$(./getIdle)
  #echo $idleTimeMillis  # just for debug purposes.
  if [[ $idle = false && $idleTimeMillis -gt $idleAfter ]] ; then
    echo "start idle"   # or whatever command(s) you want to run...
    ./script.sh
    idle=true
  fi

  if [[ $idle = true && $idleTimeMillis -lt $idleAfter ]] ; then
    echo "end idle"     # same here.
    idle=false
  fi
  sleep 1      # polling interval

done
