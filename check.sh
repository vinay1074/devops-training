#!/bin/bash
check=$"- Error: fail"
text=$(cat scan-report.yaml | grep -i  Error)
if test "$text" = "$check"
then
   echo "$text"
fi
exit 1 
