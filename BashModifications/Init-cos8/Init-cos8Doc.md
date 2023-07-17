##Comment Removals

Line 6:
```
#export PATH=$PATH:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/sbin:
```

Lines 69-71:
```
#BASE_TAG=${param//baseTest=/}
			  #BASE_TAG=${BASE_TAG//\"/}
			  #echo "Execute base test with tag: ${BASE_TAG}"
```

Lines 93-97:
```
#if [ $DOCS_BUILD -eq 1 ]
		      #then
					wget http://mirror.centos.org/centos/7/os/x86_64/Packages/fop-1.1-6.el7.noarch.rpm
					#PACKAGES_TO_INSTALL="$PACKAGES_TO_INSTALL fop-1.1
```
		      #fi
```
Note: The wget is not commented.

Lines 172-173:
```
#echo "Update PATH...
```
    #export PATH=$PATH:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/sbin:
```

Line 195:
```
# DEVTOOLSET=$( scl -l | grep -E 'devtoolset' | tail -n 1 )
```

Lines 204-205:
```
# Add self destruction without email notification
        #( crontab -l; echo ""; echo "# Self destruction initiated in ${GUILLOTINE} minutes"; echo $( date  -d "$today + ${GUILLOTINE} minutes" "+%M %H %d %m") " * sleep 10; sudo shutdown now " ) | crontab
```
        
Lines 213-214:
```
# Add self destruction without email notification
#( crontab -l; echo ""; echo "# Self destruction initiated in ${GUILLOTINE} minutes"; echo $( date  -d "$today + ${GUILLOTINE} minutes" "+%M %H %d %m") " * sleep 10; sudo shutdown now " ) | crontab
```
        
Lines 251-252:
```
# Don't use Public IP, out network may refuse to connect to it
#sed -e 's/origin=\(ec2.*\)/origin='"$PUBLIC_IP"':5006/g' ./startBokeh_templ.sh>  ./startBokeh.sh
#echo "Bokeh address: $PUBLIC_IP:5006"
```
				
##Other Changes

egrep -> grep -E

Line 16 Removed: 
```
AVERAGE_SESSION_TIME=0.75 # Hours for m4.4xlarge instance
```
