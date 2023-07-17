##Comment Removals

Line 61:
```
#INSTANCE_NAME=${INSTANCE_NAME//PR/PR-}
```

Lines 94-96:
```
#BASE_TAG=${param//baseTest=/}
			  #BASE_TAG=${BASE_TAG//\"/}
			  #myEcho "Execute base test with tag: ${BASE_TAG}"
```
			  
Lines 109-125:
```
#cat << DATASTAX_ENTRIES | sudo tee /etc/yum.repos.d/datastax.repo
				#[datastax]
				#name = DataStax Repo for Apache Cassandra
				#baseurl = https://rpm.datastax.com/community
				#enabled = 1
				#gpgcheck = 0
				#DATASTAX_ENTRIES

				# Ignore Cassandra
				#cat << CASSANDRA_ENTRIES | sudo tee /etc/yum.repos.d/cassandra.repo
				#[cassandra]
				#name=Apache Cassandra
				#baseurl=https://www.apache.org/dist/cassandra/redhat/311x/
				#gpgcheck=0
				#repo_gpgcheck=0
				#gpgkey=https://www.apache.org/dist/cassandra/KEYS
				#CASSANDRA_ENTRIES
```
				
Lines 145-146:
```
#PACKAGES_TO_INSTALL="expect mailx dsc30 cassandra30 cassandra30-tools bc psmisc"
#PACKAGES_TO_INSTALL="expect mailx dsc cassandra cassandra-tools bc psmisc git ncurses-devel"
```
				
Lines 149-153:
```
#if [ $DOCS_BUILD -eq 1 ]
				#then
					wget http://mirror.centos.org/centos/7/os/x86_64/Packages/fop-1.1-6.el7.noarch.rpm
					PACKAGES_TO_INSTALL="$PACKAGES_TO_INSTALL fop-1.1"
				#fi
```
Note: Only the if statement is commented

Line 241:
```
#./configure --with-ssl && \
```

Lines 464-465:
```
#myEcho "Update PATH..."
#export PATH=$PATH:/usr/local/bin:/bin:/usr/local/sbin:/sbin:/usr/sbin:
```
    
Lines 499-500, 508-509:
```
# Add self destruction without email notification
        #( crontab -l; echo ""; echo "# Self destruction initiated in ${GUILLOTINE} minutes"; echo $( date  -d "$today + ${GUILLOTINE} minutes" "+%M %H %d %m") " * sleep 10; sudo shutdown now " ) | crontab
```

Lines 551-552:
```
#myEcho "Remove pyparsing"
#sudo yum remove -y pyparsing
```
				
Lines 565-567:
```
# Don't use Public IP, out network may refuse to connect to it
				#sed -e 's/origin=\(ec2.*\)/origin='"$PUBLIC_IP"':5006/g' ./startBokeh_templ.sh>  ./startBokeh.sh
				#myEcho "Bokeh address: $PUBLIC_IP:5006"
```
				
##Other Changes

egrep -> grep -E

Line 35 Removed: 
```
AVERAGE_SESSION_TIME=0.75 # Hours for m4.4xlarge instance
```

Curl Check and Installation Removed:
```
myEcho "-------------------------------------
```

myEcho "Check and install curl 7.67.0
```
CURL_7_67=$( find ~/ -iname 'curl-7.67.0.tar.gz' -type f -size +1M -print | head -n 1 )
if [[ -n "$CURL_7_67" ]]
then
    wget --no-check-certificate https://curl.se/download/curl-7.81.0.tar.gz
    myEcho "$CURL_7_81 found, unzip and install it"
    gunzip -c curl-7.81.0.tar.gz | tar xvf -
    pushd curl-7.81.0

    ./configure --with-gnutls --with-ssl
    make -j && \
    sudo make install
    popd
    type "curl"
    curl --version;
else
    myEcho "curl 7.67.0 not found. Current version: $(curl --version)"
fi
```
