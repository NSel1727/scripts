##Comment Removals

Line 28: "#WUTOOLTEST_EXCLUSION='CcdFileTest'"

Line 91: "#sudo rm -rf /var/lib/cassandra/*"

Lines 129-139: "# Wait for 10 sec to Cassandra wake up
                #sleep 10"
                
Lines 253-254: "#For test the result processing
                #WUTOOLTEST_RESULT_FILE=${OBT_LOG_DIR}/wutoolTest-result-2016-04-15_12-52-58.log"
                
Line 274: "#cat ${WUTOOLTEST_RESULT_FILE} | egrep -i 'ok|Run:' | while read res"

Line 298: "#WriteLog "Result: ${RESULT}" "$WUTOOLTEST_EXECUTION_LOG_FILE""

Line 306: "#FAILED=$(( $FAILED + $UNIT_FAILED))"

Lines 324-325: "#WriteLog "TestResult:unit:total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:{$UNIT_ERRORS} timeout:${UNIT_TIMEOUT}"  "$WUTOOLTEST_EXECUTION_LOG_FILE"
            #echo "TestResult:wutoolTest:total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:{$UNIT_ERRORS} timeout:${UNIT_TIMEOUT}" > $WUTOOLTEST_SUMMARY_FILE"
            
Lines 337-338: "#WriteLog "TestResult:wutoolTest(${target}):total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:${UNIT_ERRORS} timeout:${UNIT_TIMEOUT} elaps:${elaps}"  "$WUTOOLTEST_EXECUTION_LOG_FILE"    
    #echo "TestResult:wutoolTest(${target}):total:${UNIT_TOTAL} passed:${UNIT_PASSED} failed:${UNIT_FAILED} errors:${UNIT_ERRORS} timeout:${UNIT_TIMEOUT} elaps:${elaps}" >> $WUTOOLTEST_SUMMARY_FILE"
    
Line 344: "#echo "TestResult:wutoolTest:total:${TOTAL} passed:${PASSED} failed:${FAILED} errors:${ERRORS} timeout:${TIMEOUT}" > $WUTOOLTEST_SUMMARY_FILE"


