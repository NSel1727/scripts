##Comment Removals

Line 5: "#import system"

Line 150: "#testInfo = {}"

Lines 201-202:" #print "ch10:'"+str(ch10)+"', ch11:'"+str(ch11)+"'"
        	#print "ch20:'"+str(ch20)+"', ch21:'"+str(ch21)+"'""
        	
Line 205:"#print(val)"

Line 214:"#print '\n\n'"

Line 286:"#testName = items[0]+'.'+items[2].strip()"

Lines 303-304:" #items = testname.split('.')
            	#line = "%-*s " % (20,  items[1])"
                
Lines 408-409:"# This is a 'Test:' line
               #testName = items[0]+'.'+items[2].strip()"
               
Line 422: "#logs[prefix][testName][target]"

Line 442: "#inError=False"

Line 481: "#for testname in sorted(logs[prefix],  key=str.lower) :"

Line 485: "#print("%3d:%s-%s-%s" % (executed,  prefix,  target, testname))"

Line 513: "#print("total:%3d, pass: %3d, fails:%3d\n-----------------------\n" % (executed,  passed,  failed))"

Lines 563-564: "#items = testname.split('.')
                #line = "%-*s " % (20,  items[1])"
                
Line 615-616: "#print("\t%s" % (str(m.groups())))
	       #retVal[m.group(2)] = m.group(1)"
	       
Lines 658-659, 668-669: "# Using wget (problems on Replacement MFA machines)
		#myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests.json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)"
		
Lines 678-680: "# With curl
		#myProc = subprocess.Popen(["curl -S " + headers + " -i -o pullRequests.json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#(result,  retCode) = formatResult(myProc)"
		
Lines 690-693: "#myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests"+str(page)+".json https://api.github.com/repositories/2030681/pulls?page="+str(page)],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
                # Using wget (problems on Replacement MFA machines)
                #myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests"+str(page)+".json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls?page="+str(page)], shell=True, bufsize=8192, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                # Using curl"
                
Lines 694-695: "# With curl
                #myProc = subprocess.Popen(["curl -S " + headers + " -opullRequests"+str(page)+".json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls?page="+str(page)], shell=True, bufsize=8192, stdout=subprocess.PIPE, stderr=subprocess.PIPE)"
                
Line 718: "#print("Result: " + str(result))"

Line 727: "#print(pulls)"

Line 766, 770: "#prs[prid]['cmd'] = 'git fetch -ff upstream pull/'+str(prid)+'/head:'+repr(pr['head']['ref'])+'-smoketest'"

Line 860:"#buildSuccess= False"

Lines 864-871: "# The result of this code block never used, remove 
		#            buildSummaryFile = open(buildSummaryFileName, 'r')
		#            buildSummary = buildSummaryFile.readlines()
		#            buildSummaryFile.close()
		#            for line in buildSummary:
		#                if "Build success" in line:
		#                    buildSuccess = True
		#                    break"
		
Lines 875-876:"# wget -O<PRID>.diff https://github.com/hpcc-systems/HPCC-Platform/pull/<PRID>.diff
               #myProc = subprocess.Popen(["wget --timeout=60 -O"+testDir+"/"+str(prid)+".diff https://github.com/hpcc-systems/HPCC-Platform/pull/"+str(prid)+".diff"],  shell=True,  bufsize=65536,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)"
               
Line 903: "#excludePaths = ['helm/', 'dockerfiles/', '.github/', 'testing/helm/', 'MyDockerfile/']"

Line 906: "#prs[prid]['excludeFromTest'] = any([True for x in prs[prid]['files'] if any( [True for y in excludePaths if x.startswith(y) ])] )"

Line 951: "#print("Build PR-"+str(prid)+", label: "+prs[prid]['label']+' sheduled to testing ('+prs[prid]['reason']+')')"

Lines 953-971: "#            # generates changed file list:
#            # wget -O<PRID>.diff https://github.com/hpcc-systems/HPCC-Platform/pull/<PRID>.diff
#            #myProc = subprocess.Popen(["wget --timeout=60 -O"+testDir+"/"+str(prid)+".diff https://github.com/hpcc-systems/HPCC-Platform/pull/"+str(prid)+".diff"],  shell=True,  bufsize=65536,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
#            # With curl
#            myProc = subprocess.Popen(["curl -L --connect-timeout 60 -o"+testDir+"/"+str(prid)+".diff https://github.com/hpcc-systems/HPCC-Platform/pull/"+str(prid)+".diff"],  shell=True,  bufsize=65536,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
#            # The myProc.stdout.read() hanged if there was a large (> 40MB) diff file to get.
#            (result,  err) = myProc.communicate()
#            result = result.rstrip('\n').split('\n')
#            err = err.rstrip('\n').split('\n')
#            
#            # cat <PRID>.diff | grep '[d]iff' | awk '{ print $3 }' | sed 's/a\///'
#            # gives the changes source files with path
#            #prs[pr['number']]['files'] = output of command
#            
#            myProc = subprocess.Popen(["cat "+testDir+"/"+str(prid)+".diff | grep '[d]iff ' | awk '{ print $3 }' | sed 's/a\///'"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
#            result = myProc.stdout.read().rstrip('\n').split('\n')
#            prs[prid]['files'] = result
#            
#            changedFilesFileName = os.path.join(testDir, 'changedFiles.txt')
#            oldChangedFilesFileName = os.path.join(testDir, 'changedFiles.old')
#            if os.path.exists(oldChangedFilesFileName):
#                os.unlink(oldChangedFilesFileName)
#                
#            if os.path.exists(changedFilesFileName):
#                os.rename(changedFilesFileName,  oldChangedFilesFileName)"


Lines 982-983: "#elif changedFile.startswith('helm') or changedFile.startswith('Dockefiles'):
		#prs[prid]['excludeFromTest'] = True"
		
Lines 1074-1078: "#if prs[prid]['isDocsChanged']: # and not os.path.exists(buildSummaryFileName):
                # buildSummaryFile = open(buildSummaryFileName,  "wb")
                # buildSummaryFile.write( "Only documentation changed! Don't build." )
                # buildSummaryFile.close()
                # print("In PR-"+str(prid)+", label: "+prs[prid]['label']+" only documentation changed! Don't sheduled to testing ")"
                
Line 1081: "#print("Build PR-"+str(prid)+", label: "+prs[prid]['label']+" scheduled to testing (reason:'"+prs[prid]['reason']+"', is DOCS changed:"+str(prs[prid]['isDocsChanged'])+")")"

Line 1168: "#return (prs, buildPr)"

Lines 1341-1344: "  # Smoketest has no right to push
		    # print("\tgit push origin master")
		    # myProc = subprocess.Popen(["git push origin master"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		    # result = formatResult(myProc)"
		    
Lines 1355-1358: "#myProc = subprocess.Popen(["ecl --version"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		  #        result = myProc.stdout.read() + myProc.stderr.read()
		  #        #results = result.split('\n')
		  #        print("\t"+result)"
		
Lines 1359-1361: "#    err = Error("6002")
		  #    logging.error("%s. checkHpccStatus error:%s!" % (1,  err))
		  #    raise Error(err)
		  
Lines 1363-1365: "    #    err = Error("6003")
		    #    logging.error("%s. checkHpccStatus error:%s!" % (1,  err))
		    #    raise Error(err)"
		    
Line 1377: "#tableItems=[]"

Line 1423: "#values ="|"

Line 1513: "#result = result.replace('\n', '\\n')+"\\n"

Lines 1643-1643: "#msg +=  '\n' + buildErrorStr + '\n'
                  #buildFailed=False"
                  
Line 1646: "#eclWatchBuild = False"

Line 1822: "#print("\tSuite Error"+result)"

Line 1868: "#msg += result.replace('stopped',  'stopped,').replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace("\\", "").replace('\<','<').replace('/>','>').replace('\xc2\xae','').replace('/*', '*').replace('*/', '*')"

Line 1873: "#print(", "+result)"

Line 1888: "#eclWatchBuildError += result + '\n'"

Line 1912: "#eclWatchBuild=True"

Lines 1917-1921: "#msg += eclWatchTable.getTable()
		  #msg += '\n'
		  #if len(npmTestResultErr) > 0:
		  #print(npmTestResultErr)
		  #msg += npmTestResultErr + '\n'"
	
Lines 1925-1927: "#items = result.split()
		  #eclWatchTable.addItem("lint " + items[1]+':'+items[0])
		  ##npmTestResult += 'Error(s): \n'"
		  
Lines 1962-1965: "# That was a vertical table, I think it is too big.
		  #timeStatsTable.addItem('Stage:' + items[0].replace(' time', '').strip() )
		  #timeStatsTable.addItem('Time: ' + items[1], ': ')
		  # Create a horizontal table "
		  
Lines 1966-1968: "#if len(msg) > maxMsgLen:
		  ## Too much messsages something really wrong
		  #break"
		  
Line 2000: "#.replace('\\xc2\\xae', '\xc2\xae')" 
**Note**: This is commented out of the end of "msg = msg.replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace('\<','').replace('/>','').replace('\n', '\\n').replace('"', '\'')"	

Line 2025, 2532: "#curDir =  os.getcwd()"

Line 2072: "#testDir = "smoketest-"+str(prid)"

Lines 2111-2115: "#            resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
		  #            resultFile.write("------------------------------------------------------\n")
		  #            resultFile.write(addCommentCmd+"\n")
		  #            resultFile.write("------------------------------------------------------\n")
		  #            if addGitComment:"
		  
Line 2132, 2252, 2352, 2400, 2405: "#resultFile.write("\tresult:"+result+"\n")"

Line 2235: "#result = formatResult(myProc, resultFile,  noEcho)"

Lines 2264-2265: "#resultFile.write("\tscl enable devtoolset-2 "+os.getcwd()+"/build.sh " + prs[prid]['regSuiteTests'] + "\n")
                    #myProc = subprocess.Popen(["scl enable devtoolset-2 "+os.getcwd()+"/build.sh " + prs[prid]['regSuiteTests'] ],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE)"
                    
Line 2279: "#myProc = subprocess.Popen(["./build.sh " + prs[prid]['regSuiteTests']  ],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE)

Lines 2284-2295: "#myStdout = myProc.stdout.read()
               	  #myStderr = myProc.stderr.read()"
               	  
Line 2304: "#print("\t"+result)"

Lines 2316-2318: "# Avoid orphan escape '\' char.
            	  #while ( msg[maxMsgLen-1] == '\\' ):
            	  #    maxMsgLen -= 1"
            	  
Line 2336: "#msg = msg.replace('stopped',  'stopped,').replace("\\", "").replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace('\<','').replace('/>','').replace('\xc2\xae','')"

Lines 2340-2348: "	#            resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
			#            resultFile.write("------------------------------------------------------\n")
			#            resultFile.write(addCommentCmd+"\n")
			#            resultFile.write("------------------------------------------------------\n")
			#            if addGitComment:
				    uploadGitHubComment(addCommentCmd,  resultFile)
			#            else:
			#                msgId = MessageId(resultFile)
			#                msgId.addNewFromResult(result)"
			
Lines 2411-2412: "#if not isBuild and os.path.exists(resultFileName):
			#os.unlink(resultFileName)"
			
Line 2435: "#startTimestamp = time.time()"

Line 2448: "#resultFile.write(msg + "\n")"

Lines 2482-2485: "#            resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
		  #            resultFile.write("------------------------------------------------------\n")
		  #            resultFile.write(addCommentCmd+"\n")
		  #            resultFile.write("------------------------------------------------------\n")"
		  
Lines 2524-2528: "#    # Generate fake build.summary for testing purpose only
			#    buildSummaryFileName = smoketestHome + '/' + threading.current_thread().name + '/build.summary'
			#    buildSummaryFile = open(buildSummaryFileName,  "wb")
			#    buildSummaryFile.write('Build: success\n')
			#    buildSummaryFile.close()"
			
Line 2578: "#testDir = "smoketest-"+str(prid)"

Line 2584-2586: "#        curTime = time.strftime("%y-%m-%d-%H-%M-%S")
		 #        resultFileName= "scheduler-" + curTime + ".log"
		 #        resultFile = open(resultFileName,  "a", 0)"
		 
Lnes 2591-2601: "#            # Ensure to report and use the lastes commit id
		#            msg = "\tGet the current commit id for PR-%d" % (prid)
		#            print(msg)
		#            resultFile.write(msg + "\n")            
		#            newCommitId = GetPullReqCommitId(str(prid))
		#            if newCommitId != '':
		#                prs[prid]['sha'] = newCommitId
		#                outFile = open('sha.dat',  "wb")
		#                outFile.write( prs[prid]['sha'])
		#                outFile.close()# store commit crc
		#            "
		
Lines 2602-2607: "#            resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
		#            resultFile.write("------------------------------------------------------\n")
		#            resultFile.write(addCommentCmd+"\n")
		#            resultFile.write("------------------------------------------------------\n")
		#            if addGitComment:
			    #uploadGitHubComment(addCommentCmd,  resultFile)"
			    
Lines 2608-2610: "#            resultFile.write("%d/%d. Process PR-%s, label: %s\n" % ( prSequnceNumber, numOfPrToTest, str(prid), prs[prid]['label']))
		#            resultFile.write("\ttitle: %s\n" % (repr(prs[prid]['title'])))
		#            resultFile.write("\tsha  : %s\n" % (prs[prid]['sha']))
			    "
			    
Line 2758: "#cmd += " -tests='" + prs[prid]['regSuiteTests'] + "'""

Lines 2761-2765: "#                    cmd += " -unittest=" + str(prs[prid]['runUnittests'])
		  #                    cmd += " -wuttest=" + str(prs[prid]['runWutoolTests'])
		  #                    cmd += " -buildEclWatch=" + str(prs[prid]['buildEclWatch'])
		  #                    cmd += " -keepFiles=" + str(keepFiles)
		  #                    cmd += " -enableStackTrace=" + str(prs[prid]['enableStackTrace'])"
		
Lines 2789-2794: "#                #myStdout = myProc.stdout.read()
		  #                #myStderr = myProc.stderr.read()
		  #                result = myStdout
				
		  #                if not myStderr.startswith('TERM'):
		  #                    result += myStderr
			    "
			    
Lines 3067-3069: "#                    result = myProc.stdout.read() + myProc.stderr.read()
		  #                    print("\t"+result)
		  #                    resultFile.write("\tresult:"+result+"\n")"
		  
Lines 3141-3151: "#        oldPRsDir='OldPrs'
		#        if not os.path.exists(oldPRsDir):
		#                os.mkdir(oldPRsDir)
		#                
		#        print("\nMove old PRs (>30 days) into " + oldPRsDir +" directory.")
		#        #  find . -maxdepth 1 -type d -ctime +30 ! -name HPCC-Platform ! -name OldPrs -exec mv  '{}' OldPrs/. \;
		#        # Move all directory which is older than 30 days, but not HPCC-Platform or OldPrs to OldPrs directory
		#        myProc = subprocess.Popen(["find . -maxdepth 1 -type d -mtime +30 ! -name HPCC-Platform ! -name 'Old*' -print -exec mv '{}' "+ oldPRsDir +"/. \;"],  shell=True,  bufsize=8192, stdin=subprocess.PIPE, stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        (myStdout,  myStderr) = myProc.communicate()
		#        result = myStdout+ myStderr
		#        print("Result:"+result)
		"
		
Line 3201: "#unicodestring = '\xa0'"

Line 3295: "# processResult(result,  msg,  resultFile,  buildFailed=False,  testFailed=False,  testfiles=None,"

Lines 3384-3385: "#smoketestHome = os.getcwd()
        	  #knownPullRequests = glob.glob("smoketest-*") + glob.glob("PR-*")"
        	  
Lines 3391-3397: "#        CatchUpMaster()
		  #        print("[%s] - Check and remove all finished tasks from the list." % (threading.current_thread().name,  len(threads)))
		  #        for key in threads:
		  #            if not threads[key]['thread'].is_alive():
		  #                print("--- Finished key:%s, remove"  % (key))
		  #                del threads[key]
		  #        "
		  
Line 3482: "#print("---------------------------------------------")"

