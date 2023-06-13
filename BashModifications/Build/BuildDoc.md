##Removed Commented Code

Lines 39-40: "#HTHOR_PQ=$(( $NUMBER_OF_CPUS / 4  + (($RANDOM %  3) - 1 ) ))  # 1, 2 or 3
    #HTHOR_PQ=$(( $NUMBER_OF_CPUS / 4  + ( $RANDOM %  2 ) ))  #  2 or 3"
    
Line 50: "#THOR_PQ=$((  5 * $NUMBER_OF_CPUS / 8  + (($RANDOM %  3) - 1 ) ))  # 5, 6, or 7"

Lines 60-61: "#ROXIE_PQ=$((   $NUMBER_OF_CPUS / 4  + (($RANDOM %  3) - 1 ) ))  # 1, 2 or 3
    #ROXIE_PQ=$((   $NUMBER_OF_CPUS / 4  + ($RANDOM %  2) ))  #  2 or 3"
    
Lines 89-93: "#res=$(  exec >> ${logFile} 2>&1 )
			  #exec > ${logFile} 2>&1
			  #echo "Res:${res}"
			  #echo "Res:${res}" >> $logFile 2>&1
			  #echo "logFile:$logFile""
			  
Lines 214-218: "# Experimental to use RAMDisk tas build directory
    #res=$( free; sudo -S sync; echo 3 | sudo tee /proc/sys/vm/drop_caches; free )
    #WritePlainLog "res:${res}" "$resultFile"
    #sudo mount -t tmpfs -o noatime,size=6G tmpfs $(pwd)/${BUILD_ROOT}
    #WritePlainLog " $( mount | egrep '/home/ati/Smoketest' )" "$resultFile""
    
Lines 433-436: "#echo "Update Git submodules"
				#echo "Update Git submodules" >> $logFile 2>&1

				#git submodule update --init --recursive"
    
Lines 481-488: "#mkdir -p ${BUILD_ROOT}/downloads/boost_1_71_0
            #res=$( cp -v $HOME/boost_1_71_0.tar.gz ${BUILD_ROOT}/downloads/ 2>&1 )
            #WritePlainLog "res: ${res}" "$logFile"
            #chmod 0766 ${BUILD_ROOT}/downloads/*.gz
            #pushd ${BUILD_ROOT}/downloads
            #tar -xzvf boost_1_71_0.tar.gz
            #WritePlainLog "retcode: $?" "$logFile"
            #popd"
    
Line 495: "#wget -v  -O ${BUILD_ROOT}/downloads/boost_1_71_0.tar.gz  https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.gz"
Lines 497-499: "#MAKE_FILE="../HPCC-Platform/cmake_modules/buildBOOST_REGEX.cmake"
            #sed -e 's/TIMEOUT \(.*\)/TIMEOUT 60/g' ${MAKE_FILE} >temp.cmake && sudo mv -f temp.cmake ${MAKE_FILE}
            #WritePlainLog "There is $( egrep 'TIMEOUT' ${MAKE_FILE} )" "$logFile""        

Lines 544-547: "#cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform >> $logFile 2>&1
#cmake  -G"Eclipse CDT4 - Unix Makefiles" -DINCLUDE_PLUGINS=ON -DTEST_PLUGINS=1 -DSUPPRESS_PY3EMBED=ON -DINCLUDE_PY3EMBED=OFF -DMAKE_DOCS=$DOCS_BUILD -DUSE_CPPUNIT=$UNIT_TESTS -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DUSE_LIBXSLT=ON -DXALAN_LIBRARIES= -D MAKE_CASSANDRAEMBED=1 -D CMAKE_BUILD_TYPE=$BUILD_TYPE -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform >> $logFile 2>&1
#cmake  -G"Eclipse CDT4 - Unix Makefiles" -DINCLUDE_PLUGINS=ON -DTEST_PLUGINS=1 ${PYTHON_PLUGIN} -DMAKE_DOCS=$DOCS_BUILD -DUSE_CPPUNIT=$UNIT_TESTS -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DUSE_LIBXSLT=ON -DXALAN_LIBRARIES= -D MAKE_CASSANDRAEMBED=1 -D CMAKE_BUILD_TYPE=$BUILD_TYPE -DECLWATCH_BUILD_STRATEGY=$ECLWATCH_BUILD_STRATEGY -D CMAKE_ECLIPSE_MAKE_ARGUMENTS=-30 ../HPCC-Platform ln -s ../HPCC-Platform >> $logFile 2>&1
#GENERATOR="Eclipse CDT4 - Unix Makefiles""

Line 678: "#WritePlainLog "Build it" "$logFile""

Line 681: "#make -j 16 -d package >> $logFile 2>&1"

Line 685: "#${CMD} 2>&1 | tee -a $logFile"

Line 699: "#cat $logFile"

Lines 702-706: "#    CheckResult "$logFile"
#    
#    WritePlainLog "ReportTimes." "$logFile"
#    ReportTimes "$logFile"
#    exit 1"

Line 780: "#hpccpackage=$( grep 'Current release version' ${logFile} | cut -c 31- )".deb""

Lines 794-795: "#echo "Build: success"
    #echo "Build: success" >> $logFile 2>&1"
    
Line 804: "#sudo dpkg -i $hpccpackage >> $logFile 2>&1"

Lines 822-824: "#CheckResult "$logFile"
				#CeckEclWatchBuildResult "$logFile"
				#exit 1"
				
Line 886: "#echo $res"

Line 906: "#WritePlainLog "Let's start HPCC system" "$logFile""

Line 961: "#${cmd} 2>&1 | tee -a $logFile"

Line 978: "#${cmd} 2>&1  | tee -a $logFile"

Lines 985-986: "#WritePlainLog "pushd ${TEST_DIR}" "$logFile"
                #pushd ${TEST_DIR}"
                
Lines 998-999: "#mkdir -p $RTE_DIR
                #res=$( cp -rv $COMMON_RTE_DIR/* $RTE_DIR/ 2>&1)"
                
Lines 1024-1026: "#pwd2=$(PR_ROOT )
                  #echo "pwd:${pwd2}"
                  #echo "pwd:${pwd2}" >> $logFile 2>&1"
                  
Lines 1079-1081: "#popd
                  #WritePlainLog "pushd ${RTE_DIR}" "$logFile"
                  #pushd ${RTE_DIR}"
                
Line 1083: "#cmd="./ecl-test setup -t all --suiteDir $TEST_DIR --config $TEST_DIR/ecl-test.json --loglevel ${LOGLEVEL} --timeout ${SETUP_TIMEOUT} --pq ${PARALLEL_QUERIES} ${ENABLE_STACK_TRACE}""

Line 1118: "#cmd="./ecl-test run -t ${TARGET} ${GLOBAL_EXCLUSION} --suiteDir $TEST_DIR --config $TEST_DIR/ecl-test.json --loglevel ${LOGLEVEL} --timeout ${REGRESSION_TIMEOUT} --pq ${PARALLEL_QUERIES} ${STORED_PARAMS} ${ENABLE_STACK_TRACE}""

Line 1122: "#cmd="./ecl-test query -t ${TARGET} ${GLOBAL_EXCLUSION} --suiteDir $TEST_DIR --config $TEST_DIR/ecl-test.json --loglevel ${LOGLEVEL} --timeout ${REGRESSION_TIMEOUT} --pq ${PARALLEL_QUERIES} ${STORED_PARAMS} ${ENABLE_STACK_TRACE} $REGRESSION_TEST""

Line 1127: "#${cmd} 2>&1  | tee -a $logFile"

Lines 1198-1199: "#setupPassed=0
                  #WritePlainLog "Setup failed." "$logFile""
                  
Line 1247: "#echo $hpccRunning" HPCC component running.""

Line 1270: "#cores=($(find /var/lib/HPCCSystems/ -name 'core*' -type f))"

Lines 1295-1297: "#base=$( dirname $core )
            	  #lastSubdir=${base##*/}
		          #comp=${lastSubdir##my}"
		          
Lines 1308-1309: "#WritePlainLog "Files: $( sudo ls -l $core* ) " "$logFile"
                   #sudo zip ${HPCC_CORE_ARCHIVE} $c >> ${HPCC_CORE_ARCHIVE}.log"
                   
Lines 1357-1359: "#echo "There is no core file in /var/lib/HPCCSystems/" >> ${HPCC_CORE_ARCHIVE}.log
        #echo "-----------------------------------------------------------" >> ${HPCC_CORE_ARCHIVE}.log
        #echo " " >>${HPCC_CORE_ARCHIVE}.log"
        
Lines 1381-1386: "#    CheckResult "$logFile"
				  #    CheckEclWatchBuildResult "$logFile"
				  #    WritePlainLog "ReportTimes." "$logFile"
				  #    ReportTimes "$logFile"
				  #
				  #    exit 1"
				  
				
##Additional Changes

egrep -> grep -E

