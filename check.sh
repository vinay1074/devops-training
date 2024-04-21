#!/bin/bash
check="- Error: fail"
text=$(cat scan-report.yaml | grep -i  Error | head -n 1)
if test "$text" = "$check"
then
   echo "$text"
else
   exit 0
fi
exit 1
