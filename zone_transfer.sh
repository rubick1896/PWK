#/bin/bash
#Simple Zone Transfer Bash Script
#$1 is the first arugment given after the bash script


for server in $(host -t ns $1 | cut -d" " -f4); do
  host -l $1  $server | grep "has address"
done
