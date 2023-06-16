##Comment Removals

Line 16: "#INSTANCE_ID=$( sudo ls -l /var/lib/cloud/instance | cut -d' '  -f12 | cut -d '/' -f6 )"

Lines 134-143: "#export addGitComment=0
                #export runOnce=0
                #export keepFiles=0
                #export enableShallowClone=0
                #export removeMasterAtExit=0
                #export testOnlyOnePR=0
                #export AVERAGE_SESSION_TIME=0.5 # hours


                #echo "pwd:$( pwd )""
                
Lines 162-173: "# Using GitHub token the agent magic doesn't necessary 
                # Update agent pid
                # get the latest ssh-* directory name
                #agentdir=$( sudo ls -td1 /tmp/ssh-* | head -n 1 );

                # position independet way to get agent.xxxxx value
                #agentPid=$( ls -l ${agentdir} | grep 'agent' | sed -n "s/^.*\(agent.[0-9].*\)/\1/p" )

                #printf "export SSH_AUTH_SOCK=%s/%s\n" ${agentdir} $agentPid > .ssh_auth_sock.var
                #cat .ssh_auth_sock.var
                #. ./.ssh_auth_sock.var
                #env | grep SSH_AUTH_SOCK"
                
Lines 179-190: "# Using GitHub token the agent magic doesn't necessary
                # Remove old agent(s)
                #echo "Remove old security agents"
                #sudo find /tmp/ -iname 'ssh-*' -type d | egrep -v "$agentdir" | while read oldAgentDir
                #do 
                #    oldAgentPid=$( ls -l ${oldAgentDir} | grep 'agent' | sed -n "s/^.*agent.\([0-9].*\)/\1/p" ); 
                #    oldAgentPid=$(( $oldAgentPid + 1 ))
                #    printf "Kill old agent (%s) and remove it's directory (%s)\n" $oldAgentPid $oldAgentDir
                #    sudo kill -9 $oldAgentPid
                #    sudo rm -rf $oldAgentDir
                #done
                #echo "Done.""
                

