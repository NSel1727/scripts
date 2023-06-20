##Comment Removals

Lines 54-58: "#res=$(  exec >> ${logFile} 2>&1 )
              #exec > ${logFile} 2>&1
              #echo "Res:${res}"
              #echo "Res:${res}" >> $logFile 2>&1
              #echo "logFile:$logFile""
              
Line 178: "#echo $upperPlugin"

Lines 225-233: "#-------------------------------------------------
                #
                # Update submodule
                #cd $SOURCE_ROOT

                #echo "Update Git submodules"
                #echo "Update Git submodules" >> $logFile 2>&1

                #git submodule update --init --recursive"
                
Lines 256-258: "#cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform >> $logFile 2>&1
#cmake  -G"Eclipse CDT4 - Unix Makefiles" -DINCLUDE_PLUGINS=ON -DTEST_PLUGINS=1 -DSUPPRESS_PY3EMBED=ON -DINCLUDE_PY3EMBED=OFF -DMAKE_DOCS=$DOCS_BUILD -DUSE_CPPUNIT=$UNIT_TESTS -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DUSE_LIBXSLT=ON -DXALAN_LIBRARIES= -D MAKE_CASSANDRAEMBED=1 -D CMAKE_BUILD_TYPE=$BUILD_TYPE -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform >> $logFile 2>&1
#CM_CMD="cmake -DRUNTIME_USER=$RUNTIME_USER -DDESTDIR=${PR_ROOT}/$TARGET_DIR -DINCLUDE_PLUGINS=ON -DTEST_PLUGINS=1 ${PYTHON_PLUGIN} -DMAKE_DOCS=$DOCS_BUILD -DUSE_CPPUNIT=$UNIT_TESTS -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DUSE_LIBXSLT=ON -DXALAN_LIBRARIES= -D MAKE_CASSANDRAEMBED=1 -D CMAKE_BUILD_TYPE=$BUILD_TYPE -DECLWATCH_BUILD_STRATEGY=$ECLWATCH_BUILD_STRATEGY -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform""

Lines 281-294: "# -- Current release version is hpccsystems-platform_community-5.1.0-trunk0Debugquantal_amd64
                # In quick build method we have not package

                #hpccpackage="hpccsystems-platform_community-4.1.0-trunk1Debugquantal_amd64.deb"
                #hpccpackage="hpccsystems-platform*"
                #rm -f $hpccpackage
                #if [ $? -ne 0 ]
                #then
                #    echo "To remove ${hpccpackage} is failed"
                #    echo "To remove ${hpccpackage} is failed" >> $logFile 2>&1
                #else
                #    echo "To remove ${hpccpackage} success"
                #    echo "To remove ${hpccpackage} success" >> $logFile 2>&1
                #fi"
                
Line 334: "#WritePlainLog "Build it" "$logFile""

Line 337: "#make -j 16 -d package >> $logFile 2>&1"

Line 343: "#${CMD} 2>&1 | tee -a $logFile"

Line 350: "#cat $logFile"

Lines 363-394: "# # In quick build method we do not make package
#CMD="make -j ${NUMBER_OF_BUILD_THREADS} package"
#
#echo "cmd: ${CMD} $(date +%Y-%m-%d_%H-%M-%S)"
#echo "cmd: ${CMD} $(date +%Y-%m-%d_%H-%M-%S)" >> $logFile 2>&1
#
#${CMD} >> $logFile 2>&1
#
#
#echo "End $(date +%Y-%m-%d_%H-%M-%S)"
#echo "End $(date +%Y-%m-%d_%H-%M-%S)" >> $logFile 2>&1

#IS_NOT_RPM=$( type "rpm" 2>&1 | grep -c "not found" )
#echo "IS_NOT_RPM: $IS_NOT_RPM"
#PKG_EXT=
#INST_CMD=
#
#if [[ "$IS_NOT_RPM" -ne 0 ]]
#then
#    PKG_EXT=".deb"
#    INST_CMD="dpkg -i "
#else
#    PKG_EXT=".rpm"
#    INST_CMD="rpm -i --nodeps "
#fi
#echo "packageExt: '$PKG_EXT', installCMD: '$INST_CMD'."
#
##hpccpackage=$( grep 'Current release version' ${logFile} | cut -c 31- )".deb"
#hpccpackage=$( grep 'Current release version' ${logFile} | cut -c 31- )${PKG_EXT}
#
#echo "HPCC package: ${hpccpackage}"
#echo "HPCC package: ${hpccpackage}" >> $logFile 2>&1"

Line 400: "#echo "Build: success" >> $logFile 2>&1"

Line 476: "#WritePlainLog "Let's start HPCC system" "$logFile""

Lines 556-558: "#pwd2=$(PR_ROOT )
                #echo "pwd:${pwd2}"
                #echo "pwd:${pwd2}" >> $logFile 2>&1"
                
Line 578: "#${cmd} 2>&1  | tee -a $logFile"

Line 612: "#${cmd} 2>&1  | tee -a $logFile"

Lines 630-631: "#setupPassed=0
                #WritePlainLog "Setup failed." "$logFile"
                
Line 700: "#cores=($(find $PR_ROOT/$TARGET_DIR/var/lib/HPCCSystems/ -name 'core*' -type f))"

Lines 725-727: "#base=$( dirname $core )
                #lastSubdir=${base##*/}
                #comp=${lastSubdir##my}"
                
Line 736: "#sudo zip ${HPCC_CORE_ARCHIVE} $c >> ${HPCC_CORE_ARCHIVE}.log"

Lines 756-758: "#echo "There is no core file in /var/lib/HPCCSystems/" >> ${HPCC_CORE_ARCHIVE}.log
                #echo "-----------------------------------------------------------" >> ${HPCC_CORE_ARCHIVE}.log
                #echo " " >>${HPCC_CORE_ARCHIVE}.log"
                
Line 774: "#zip ${HPCC_LOG_ARCHIVE} -r ${PR_ROOT}/${TARGET_DIR}/var/lib/HPCCSystems/myeclagent/temp/* >> $logFile 2>&1"

Lines 780-803: "#if [ -f $TARGET_DIR/opt/HPCCSystems/sbin/complete-uninstall.sh ]
                #    then
                #        sudo /opt/HPCCSystems/sbin/complete-uninstall.sh 
                #        echo "HPCC Uninstall: OK"
                #        echo "HPCC Uninstall: OK" >> $logFile 2>&1
                #        if [ -f "/etc/HPCCSystems/environment.xml" ]
                #        then
                #            echo "Remove environment.conf and .xml"
                #            echo "Remove environment.conf and .xml" >> $logFile 2>&1
                #            sudo rm -f '/etc/HPCCSystems/environment.*'
                #            
                #            if [ -f "/etc/HPCCSystems/environment.xml" ]
                #            then
                #                echo "  Failed."
                #                echo "  Failed." >> $logFile 2>&1
                #            else
                #                echo "  Success."
                #                echo "  Success." >> $logFile 2>&1
                #            fi
                #        fi
                #    else
                #        echo "HPCC Uninstall: failed"
                #        echo "HPCC Uninstall: failed" >> $logFile 2>&1
                #    fi"
                
Lines 819-820: "# give it some time
                #sleep 5"
                
##Other Changes

MyEcho removed due to no usage.
```
MyEcho ()
{
    param=$1
    WritePlainLog "${param}" "$resultFile"
}
```
