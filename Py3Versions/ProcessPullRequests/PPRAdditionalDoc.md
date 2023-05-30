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
