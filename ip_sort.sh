#!/usr/bin/env bash
#Author:root
#Date:2015-7-26 16:20
#Function:sort ip according its visit count
#Usage:./ip_sort.sh [Apache_access_log]
cat < $1 | grep -Eo '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | sort | uniq -c | sort -nrk 1
exit 0
