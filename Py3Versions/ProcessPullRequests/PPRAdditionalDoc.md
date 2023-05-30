##Comment Removals

Line 5: "#import system"

Line 199: "#if testFiles[0].startswith('testing/regress/ecl/'):"

Line 216-217: "#print "ch10:'"+str(ch10)+"', ch11:'"+str(ch11)+"'"
        	#print "ch20:'"+str(ch20)+"', ch21:'"+str(ch21)+"'""

Line 220: "#print(val)"

Line 229: "#print '\n\n'"

Line 301: "#testName = items[0]+'.'+items[2].strip()"

Line 306: "#logs[prefix][testName][target]"

Lines 318-319: "#items = testname.split('.')
          	#line = "%-*s " % (20,  items[1])"
          	
Line 440: "#logs[prefix][testName][target

Line 460: "#inError=False"

Line 499: "#for testname in sorted(logs[prefix],  key=str.lower) :"

Line 503: "#print("%3d:%s-%s-%s" % (executed,  prefix,  target, testname))"

Line 532: "#print("total:%3d, pass: %3d, fails:%3d\n-----------------------\n" % (executed,  passed,  failed))"

Lines 582-583: "#items = testname.split('.')
               	#line = "%-*s " % (20,  items[1])"
               	
Lines 634-635: "#print("\t%s" % (str(m.groups())))
		 #retVal[m.group(2)] = m.group(1)"
		 
Lines 677-678 & 689-690: "# Using wget (problems on Replacement MFA machines)"
"#myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests.json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)"

Lines 712-714: "#myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests"+str(page)+".json https://api.github.com/repositories/2030681/pulls?page="+str(page)],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)"
                "# Using wget (problems on Replacement MFA machines)"
                "#myProc = subprocess.Popen(["wget -S " + headers + " -OpullRequests"+str(page)+".json https://api.github.com/repos/hpcc-systems/HPCC-Platform/pulls?page="+str(page)], shell=True, bufsize=8192, stdout=subprocess.PIPE, stderr=subprocess.PIPE)"
                
Line 726: "#pulls_data += pulls_data2"

Line 740: "#print("Result: " + str(result))"
                
Line 749: "#print(pulls)"

Line 789: "#prs[prid]['cmd'] = 'git fetch -ff upstream pull/'+str(prid)+'/head:'+repr(pr['head']['ref'])+'-smoketest'"

Line 792: "#prs[prid]['cmd'] = 'git pull -ff upstream pull/'+str(prid)+'/head:'+repr(pr['head']['ref'])+'-smoketest'"

Line 888: "# The result of this code block never used, remove 
	   # buildSummaryFile = open(buildSummaryFileName, 'r')
	   # buildSummary = buildSummaryFile.readlines()
	   # buildSummaryFile.close()
 	   # for line in buildSummary:
	   #    if "Build success" in line:
	   #       buildSuccess = True
	   #       break"
	   
Lines 926-930: "#print("Build PR-"+str(prid)+", label: "+prs[prid]['label']+' sheduled to testing ('+prs[prid]['reason']+')')
            # generates changed file list:
            # wget -O<PRID>.diff https://github.com/hpcc-systems/HPCC-Platform/pull/<PRID>.diff
            #myProc = subprocess.Popen(["wget --timeout=60 -O"+testDir+"/"+str(prid)+".diff https://github.com/hpcc-systems/HPCC-Platform/pull/"+str(prid)+".diff"],  shell=True,  bufsize=65536,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)"
            
Lines 1099-1103: "#if prs[prid]['isDocsChanged']: # and not
                os.path.exists(buildSummaryFileName):
                # buildSummaryFile = open(buildSummaryFileName,  "wb")
                # buildSummaryFile.write( "Only documentation changed! Don't build." )
                # buildSummaryFile.close()
                # print("In PR-"+str(prid)+", label: "+prs[prid]['label']+" only documentation changed! Don't sheduled to testing ")"
                
Line 1107: "#print("Build PR-"+str(prid)+", label: "+prs[prid]['label']+" scheduled to testing (reason:'"+prs[prid]['reason']+"', is DOCS changed:"+str(prs[prid]['isDocsChanged'])+")")"

Line 1138: "#return (prs, buildPr)"

Lines 1298-1301: "  # Smoketest has no right to push
		    # print("\tgit push origin master")
		    # myProc = subprocess.Popen(["git push origin master"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		    # result = formatResult(myProc)
		    "
		
Lines 1313-1329: "#        myProc = subprocess.Popen(["ecl --version"],  		shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        result = myProc.stdout.read() + myProc.stderr.read()
		#        #results = result.split('\n')
		#        print("\t"+result)

		#        # Get the latest Regression Test Engine
		#        print("\tGet the latest Regression Test Engine from the master branch")
		#        myProc = subprocess.Popen(["git checkout master"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        formatResult(myProc)
		#        
		#        if not os.path.exists('../rte'):
		#            os.mkdir('../rte')
		#        
		#        myProc = subprocess.Popen(["cp -v testing/regress/ecl-test* ../rte/"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        formatResult(myProc)
		#        myProc = subprocess.Popen(["cp -v -r testing/regress/hpcc ../rte/hpcc"],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        formatResult(myProc)"
		
Lines 1325-1327: "#    err = Error("6002")
		  #    logging.error("%s. checkHpccStatus error:%s!" % (1,  err))
		  #    raise Error(err)"

Lines 1311 - 1313: "#    err = Error("6003")
    		    #    logging.error("%s. checkHpccStatus error:%s!" % (1,  err))
    		    #    raise Error(err)"	
    		    
Line 1346: "#tableItems=[]"

Line 1392: "#values ="|""

Line 1482: "#result = result.replace('\n', '\\n')+"\\n""

Lines 1611-1612: " #msg +=  '\n' + buildErrorStr + '\n'
                   #buildFailed=False"
                   
Line 1615: " # eclWatchBuild = False"

Line 1657: " #buildFailed =  True"

Lines 1807-1808: "# Suite Error
		  # print("\tSuite Error"+result)"
		  
Line 1854: "#msg += result.replace('stopped',  'stopped,').replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace("\\", "").replace('\<','<').replace('/>','>').replace('\xc2\xae','').replace('/*', '*').replace('*/', '*')" 

Line 1860: "#print(", "+result)"

Line 1875: "#eclWatchBuildError += result + '\n'"

Line 1899: " #eclWatchBuild=True"

Lines 1904-1908: "# msg += eclWatchTable.getTable()
		  # msg += '\n'
		  # if len(npmTestResultErr) > 0:
		  # 	print(npmTestResultErr)
		  #     msg += npmTestResultErr + '\n'"

Lines 1913-1915: "# items = result.split()
		  # eclWatchTable.addItem("lint " + items[1]+':'+items[0])
		  # #npmTestResult += 'Error(s): \n'"

Lines 1950-1952: "# That was a vertical table, I think it is too big.
                  #timeStatsTable.addItem('Stage:' + items[0].replace(' time', '').strip() )
                  #timeStatsTable.addItem('Time: ' + items[1], ': ')"   
                  
Lines 1958-1960: "#        if len(msg) > maxMsgLen:
		  #            # Too much messsages something really wrong
		  #            break"
		  
Line 1992: "#.replace('\\xc2\\xae', '\xc2\xae')" 
**Note**: This is commented out of the end of "msg = msg.replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace('\<','').replace('/>','').replace('\n', '\\n').replace('"', '\'')"

Line 2017: "#curDir =  os.getcwd()"
 
Line 2064: "#testDir = "smoketest-"+str(prid)"

Lines 2112-2116: "#resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
		#            resultFile.write("------------------------------------------------------\n")
		#            resultFile.write(addCommentCmd+"\n")
		#            resultFile.write("------------------------------------------------------\n")
		#            if addGitComment:"

Line 2135, 2146, 2154, 2162, 2245, 2444: "#resultFile.write("\tresult:"+result+"\n")"

Line 2264: "#result = formatResult(myProc, resultFile,  noEcho)"

Lines 2295-2296: " #resultFile.write("\tscl enable devtoolset-2 "+os.getcwd()+"/build.sh " + prs[prid]['regSuiteTests'] + "\n")
                   #myProc = subprocess.Popen(["scl enable devtoolset-2 "+os.getcwd()+"/build.sh " + prs[prid]['regSuiteTests'] ],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE)"
                   
Line 2312: "#myProc = subprocess.Popen(["./build.sh " + prs[prid]['regSuiteTests']  ],  shell=True,  bufsize=8192,  stdout=subprocess.PIPE, stdin=subprocess.PIPE, stderr=subprocess.PIPE)"

Lines 2317-2318: "#myStdout = myProc.stdout.read()
                #myStderr = myProc.stderr.read()"
     

Line 2338: "#print("\t"+result)"

Lines 2357-2358: " #while ( msg[maxMsgLen-1] == '\\' ):
                     #    maxMsgLen -= 1
                     
Line 2378: "#msg = msg.replace('stopped',  'stopped,').replace("\\", "").replace('[32m','').replace('[33m','').replace('[0m', '\\n').replace('[31m', '\\n').replace('\<','').replace('/>','').replace('\xc2\xae','')"

Lines 2382-2385: "#resultFile.write("\tAdd comment to pull request\n\tComment Cmd:\n")
				#            resultFile.write("------------------------------------------------------\n")
				#            resultFile.write(addCommentCmd+"\n")
				#            resultFile.write("------------------------------------------------------\n")"
				
Lines 2383-2387: "#            if addGitComment:
			    uploadGitHubComment(addCommentCmd,  resultFile)
		#            else:
		#                msgId = MessageId(resultFile)
		#                msgId.addNewFromResult(result)"
**Note:** "uploadGitHubComment(addCommentCmd,  resultFile)" is not commented.

Lines 2459-2460: "#if not isBuild and os.path.exists(resultFileName):
		  #os.unlink(resultFileName)"
		  
Lines 2595-2597: "#result = myProc.stdout.read() + myProc.stderr.read()
		  #print("\t"+result)
		  #resultFile.write("\tresult:"+result+"\n")"
		  
Lines 2669-2679: "#        oldPRsDir='OldPrs'
		#        if not os.path.exists(oldPRsDir):
		#                os.mkdir(oldPRsDir)
		#                
		#        print("\nMove old PRs (>30 days) into " + oldPRsDir +" directory.")
		#        #  find . -maxdepth 1 -type d -ctime +30 ! -name HPCC-Platform ! -name OldPrs -exec mv  '{}' OldPrs/. \;
		#        # Move all directory which is older than 30 days, but not HPCC-Platform or OldPrs to OldPrs directory
		#        myProc = subprocess.Popen(["find . -maxdepth 1 -type d -mtime +30 ! -name HPCC-Platform ! -name 'Old*' -print -exec mv '{}' "+ oldPRsDir +"/. \;"],  shell=True,  bufsize=8192, stdin=subprocess.PIPE, stdout=subprocess.PIPE,  stderr=subprocess.PIPE)
		#        (myStdout,  myStderr) = myProc.communicate()
		#        result = myStdout+ myStderr
		#        print("Result:"+result)"
		
Line 2824: "# processResult(result,  msg,  resultFile,  buildFailed=False,  testFailed=False,  testfiles=None,"

Line 2914-1915: "#smoketestHome = os.getcwd()
        	 #knownPullRequests = glob.glob("smoketest-*") + glob.glob("PR-*")"
        	 
