##Comment Removals

Line 8:
```
#echo "param:'"$1"'
```

Line 46:
```
#UNITTEST_EXCLUSION='CcdFileTest'
```

Line 177:
```
#pushd ${UNITTEST_BIN_PATH}
```

Line 193:
```
#result=$( sudo unbuffer ${UNITTEST_BIN} ${UNITTEST_EXEC_PARAMS} $unittest 2>&1 )
```

Line 236:
```
#popd
```

Line 248:
```
#UNITTEST_RESULT_FILE=${OBT_LOG_DIR}/unittest-result-2016-04-15_12-52-58.log
```

Line 258:
```
#results=($( cat ${UNITTEST_RESULT_FILE} | egrep -i '\<ok|run:|excep|[[:digit:]]+\)\stest|\-\s'  | egrep -v 'Digisign IException thrown' ))
```

Line 262:
```
#cat ${UNITTEST_RESULT_FILE} | egrep -i '^ok|Run:' | while read res
```

Line 269:
```
#WriteLog "Result: ${RESULT}" "$UNITTEST_LOG_FILE"
```

Line 276:
```
#FAILED=$(( $FAILED + $UNIT_FAILED))
```

Line 295:
```
#WriteLog "TestResult:unit:total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:${UNIT_ERRORS} timeout:${UNIT_TIMEOUT}"  "$UNITTEST_LOG_FILE"
```

