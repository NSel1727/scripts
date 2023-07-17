##Comment Removals

Line 55:
```
#lineCount=0
```

Lines 59-68:
```
#if [[ ${lineCount} -eq 0 ]]
#then
#    WriteHeaders
#fi

#lineCount=$(( ${lineCount} + 1))
#if [[ ${lineCount} -eq ${HEADER_ON_EVERY_LINES} ]]
#then
#    #lineCount=0
#fi  
```
				
##Other Changes
egrep -> grep -E
