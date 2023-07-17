##Removed Comments

Lines 31-34:
```
#cp -v GistLogHandler.py ../  >> ${logFile} 2>&1
#cp -v ProcessPullRequests.py ../  >> ${logFile} 2>&1
#cp -v showStatus.py ../  >> ${logFile} 2>&1
#cp -v WatchDog.py ../  >> ${logFile} 2>&1
```
              
##Other Changes

Line 7 Removed:
```
cw=$(pwd)
```
The variable cw is never used in the program.

