##Comment Removals

Line 24:
```
#PARALLEL_QUERIES=$(( $NUMBER_OF_CPUS - 3 ))
```

Line 69:
```
#TEST_5=( "teststdlibrary.ecl" "1500" )
```

Line 76:
```
#    TEST_5[@] 
```

Line 80:
```
#TARGET=hthor
```

Line 84:
```
#GLOBAL_EXCLUSION="--ef pipefail.ecl,layouttrans_disabled.ecl -e=embedded,3rdparty"
```

Line 156:
```
#NUMBER_OF_CPUS=$(( 2 * ${NUMBER_OF_CPUS} ))
```

Line 231:
```
#cmd=" egrep '\s[E|e]rror([s]*[\:\s]|\s[0-9]*[^a^o])|ValidationException:|undefined reference|No such file or directory|not found'"
```

Line 233:
```
#numberOfError=$( grep '[E|e]rror[\:\s][0-9]*' -c $logFile )
```

Line 241:
```
#echo "" >> ../build.summary
```

Line 278:
```
#cmd2=" egrep -A 7 '\-\- ECL Watch:(.*)Rebuilding'"
```

Lines 284-285:
```
#echo "${eclWatchResult}" >> $logFile 2>&1
#echo "${eclWatchResult}" >> ../build.summary
```
    
Lines 354-357, 379:
```
    #if [ $KEEP_FILES -eq 1 ]
    #then
    #    WritePlainLog "Keep files therefore skip HPCC Uninstall" "$logFile"
    #else
    ...
    #fi
```

##Other Changes

Lines 82-93 Removed:
```
GLOBAL_EXCLUSION="-e 3rdparty"
GLOBAL_EXCLUSION="-e=embedded,3rdparty"
```
Global_Exclusion is provided an initialization afterwards.

"prefetch4.ecl" removed from GLOBAL_EXCLUSION
