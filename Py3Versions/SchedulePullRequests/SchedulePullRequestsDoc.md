**Note:** All changes not presented here simply add an opening and closing parenthesis to a print statement when it already has one of each. It will be determined whether or not they are necessary.

**Change on line 180**

Original:
```
print format % tuple([Msg]+map(str,Args))
```
Edit:
```
print(format % tuple([Msg]+list(map(str,Args))))
```
Suggestion: This edit should be kept.

**Change on line 1576, 2078**

Original:
```
if type(result) != type(u' '):
```
Edit:
```
if type(result) != type(' '):
```
Suggestion: The u in type is for unicode, so if it is intended to be in unicode regardless then the edit can stay.

**Change on line 1787, 1791, 1795, 1832, 1837, 1841, 1859, 1862**

Original:
```
print str(e)+"(line: "+str(inspect.stack()[0][2])+")"
```
Edit:
```
print(str(e)+"(line: "+str(inspect.stack()[0][2])+")")
```

**Change on lines 3357-3361**

Original:
```
        result = u'Build: failed \xc2\xae\n'
        result += "Error(s): 7\n"
        result += u"/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:595:27: error: expected initializer before ‘-’ token\n"
        result += u"/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:596:13: error: ‘fileSize’ was not declared in this scope\n"
        result += u"/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:606:5: error: control reaches end of non-void function [-Werror=return-type]\n"
```
Edit:
```
        result = 'Build: failed \xc2\xae\n'
        result += "Error(s): 7\n"
        result += "/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:595:27: error: expected initializer before ‘-’ token\n"
        result += "/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:596:13: error: ‘fileSize’ was not declared in this scope\n"
        result += "/mnt/disk1/home/vamosax/smoketest/smoketest-8652/HPCC-Platform/roxie/ccd/ccdfile.cpp:606:5: error: control reaches end of non-void function [-Werror=return-type]\n"
```
Suggestion: The u in type is for unicode, so if it is intended to be in unicode regardless then the edit can stay.

**Change on line 3384, 3414, 3439, 3448**

Original:
```
msg= u'Automated Smoketest \n  \xe2\x80\x98 Test \xe2\x80\x99 \n'
```
Edit:
```
msg= 'Automated Smoketest \n  \xe2\x80\x98 Test \xe2\x80\x99 \n'
```
Suggestion: The u in type is for unicode, so if it is intended to be in unicode regardless then the edit can stay.

**Change on line 3571-3574**

Original:
```
print "Exception in user code:"
print '-'*60
traceback.print_exc(file=sys.stdout)
print '-'*60
```
Edit:
```
print("Exception in user code:")
print('-'*60)
traceback.print_exc(file=sys.stdout)
print('-'*60)
```
Suggestion: This edit should be kept.
