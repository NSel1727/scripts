##Comment Removals

Line 28:
```
#WUTOOLTEST_EXCLUSION='CcdFileTest'
```

Line 91:
```
#sudo rm -rf /var/lib/cassandra/*
```

Lines 129-139:
```
# Wait for 10 sec to Cassandra wake up
#sleep 10
```
                
Lines 253-254:
```
#For test the result processing
#WUTOOLTEST_RESULT_FILE=${OBT_LOG_DIR}/wutoolTest-result-2016-04-15_12-52-58.log
```
                
Line 274:
```
#cat ${WUTOOLTEST_RESULT_FILE} | egrep -i 'ok|Run:' | while read res
```

Line 298:
```
#WriteLog "Result: ${RESULT}" "$WUTOOLTEST_EXECUTION_LOG_FILE"
```

Line 306:
```
#FAILED=$(( $FAILED + $UNIT_FAILED))
```

Lines 324-325:
```
#WriteLog "TestResult:unit:total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:{$UNIT_ERRORS} timeout:${UNIT_TIMEOUT}"  "$WUTOOLTEST_EXECUTION_LOG_FILE"
#echo "TestResult:wutoolTest:total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:{$UNIT_ERRORS} timeout:${UNIT_TIMEOUT}" > $WUTOOLTEST_SUMMARY_FILE
```
            
Lines 337-338:
```
#WriteLog "TestResult:wutoolTest(${target}):total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:${UNIT_ERRORS} timeout:${UNIT_TIMEOUT} elaps:${elaps}"  "$WUTOOLTEST_EXECUTION_LOG_FILE"    
#echo "TestResult:wutoolTest(${target}):total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:${UNIT_ERRORS} timeout:${UNIT_TIMEOUT} elaps:${elaps}" >> $WUTOOLTEST_SUMMARY_FILE
```
    
Line 344:
```
#echo "TestResult:wutoolTest:total:${TOTAL} passed:${PASSED} failed:${FAILED} errors:${ERRORS} timeout:${TIMEOUT}" > $WUTOOLTEST_SUMMARY_FILE
```

## Other Changes

Removed Cassandra Parts:

Original:
```
testTargets=( "Dali" "Cassandra" )
```
Update:
```
testTargets=( "Dali" )
```

Removed:
```
#------------------------------------------------------------
# Check Cassandra
#

WriteLog "Check Cassandra..." "$WUTOOLTEST_EXECUTION_LOG_FILE"

tryCount=0   # DO NOT TRY TO START CASSANDRA (based on log4j problem)
testCassandra=0
CASSANDRA_STOPPED=0
DELAY_TO_CHECK=10
# Check if Cassandra installed
if type "cqlsh" &> /dev/null
then
    unset -v JAVA_HOME

    while [[ $tryCount -ne 0 ]]
    do
        WriteLog "Try count: $tryCount" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
        cassandraState=$( cqlsh -e "show version;" -u cassandra -p cassandra  2>/dev/null | grep 'Cassandra')
        if [[ -z $cassandraState ]]
        then
            WriteLog "It doesn't respond to version query. Check if it is already running." "$WUTOOLTEST_EXECUTION_LOG_FILE"
            cassandraPID=$( ps ax  | grep '[c]assandra' | awk '{print $1}' )

            if [[ -n "$cassandraPID" ]]
            then
                WriteLog "It is running (pid: ${cassandraPID}), kill it. " "$WUTOOLTEST_EXECUTION_LOG_FILE"
                sudo kill -9 ${cassandraPID}
                sleep 10
                sudo rm -rf /var/lib/cassandra/*
                CASSANDRA_STOPPED=1
            fi
 
            WriteLog "Stoped! Start it!" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
            sudo cassandra > /dev/null 2>&1

            sleep $DELAY_TO_CHECK
            tryCount=$(( $tryCount-1 ))
            continue
        else
            WriteLog "It is OK!" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
            testCassandra=1


            break
        fi
    done
    if [[ $testCassandra -eq 0 ]]
    then
        WriteLog "Cassandra doesn't start! Skip test on it. Send Email to Agyi!" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
        # send email to Agyi
        echo "Cassandra doesn't start!" | mailx -s "Problem with Cassandra" -u root  "attila.vamos@gmail.com"
    else
        testParams=( "DALISERVER=." "DALISERVER=. cassandraserver=127.0.0.1 entire=1 repository=1" )
    fi
else
    WriteLog "Cassandra  not installed in this sysytem! Send Email to Agyi!" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
    # send email to Agyi
    echo "Cassandra  not installed in this sysytem!" | mailx -s "Problem with Cassandra" -u root  "attila.vamos@gmail.com"

fi

if [[ $testCassandra -eq 0 ]]
then
    sudo systemctl enable cassandra
    sleep 10
    WriteLog "$(nodetool status)" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
    testCassandra=$( nodetool status | grep -E -c '^UN' )
    if [[ $testCassandra -eq 1 ]]
    then
        WriteLog "Cassandra seems OK!" "${WUTOOLTEST_EXECUTION_LOG_FILE}"
        testParams=( "DALISERVER=." "DALISERVER=. cassandraserver=127.0.0.1 entire=1 repository=1" )
    else
        WriteLog "Cassandra didn't start with 'sudo systemctl enable cassandra'." "${WUTOOLTEST_EXECUTION_LOG_FILE}"
    fi
fi
```

```
if [[ ($testCassandra -eq 1) && ($CASSANDRA_STOPPED -eq 1) ]]
then
    WriteLog "Cassandra was stopped. Stop it  to restore original state." "$WUTOOLTEST_EXECUTION_LOG_FILE"
    CASSANDRA_PID=$( ps aux | grep '[c]assandra' | awk '{ print $2 }' )
    CASSANDRA_STOP=$( sudo kill ${CASSANDRA_PID}; sleep 10;  ps aux | grep '[c]assandra' | awk '{ print $2 }' | wc -l) 
    if [[ ${CASSANDRA_STOP} -eq 0 ]]
    then
        WriteLog "Cassandra stopped." "$WUTOOLTEST_EXECUTION_LOG_FILE"
    else
        WriteLog "Cassandra won't stop." "$WUTOOLTEST_EXECUTION_LOG_FILE"
    fi
    WriteLog "Remove Cassandra leftovers." "$WUTOOLTEST_EXECUTION_LOG_FILE"
    sudo rm -rf /var/lib/cassandra
    sudo rm -r /var/log/cassandra
    
fi
```
