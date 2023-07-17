##Comment Removals

Line 137:
```
#INSTANCE_NAME=${INSTANCE_NAME//PR/PR-}
```

Lines 170-172:
```
#BASE_TAG=${param//baseTest=/}
#BASE_TAG=${BASE_TAG//\"/}
#WriteLog "Execute base test with tag: ${BASE_TAG}" "$LOG_FILE
```
				
Line 240:
```
#AMI_ID=$( aws ec2 describe-images --owners 446598291512 | egrep -i '"name"|imageid' | egrep -i -A2 '-el7-' | egrep -i '"ImageId"' | tr -d " " | cut -d":" -f2 )
```

Lines 247-249:
```
# CentOS 8
                #AMI_ID=$( aws ec2 describe-images --owners 446598291512 --filters "Name=name,Values=*-el8-x86_64" --query Images[].ImageId --output text )
                #[ -z ${AMI_ID} ] && AMI_ID="ami-0c464387e25013b1f"
```

Lines 265-267:
```
#cmd=aws ec2 run-instances --image-id ${AMI_ID} --count 1 --instance-type $INSTANCE_TYPE --key-name HPCC-Platform-Smoketest --security-group-ids ${SECURITY_GROUP_ID} --subnet-id ${SUBNET_ID} --instance-initiated-shutdown-behavior terminate --block-device-mappings "[{\"DeviceName\":\"/dev/sda1\",\"Ebs\":{\"VolumeSize\":$instanceDiskVolumeSize,\"DeleteOnTermination\":true,\"Encrypted\":true}}]"
#cmd="aws ec2 run-instances --image-id ${AMI_ID} --count 1 --instance-type $INSTANCE_TYPE --key-name HPCC-Platform-Smoketest --security-group-ids ${SECURITY_GROUP_ID} --subnet-id ${SUBNET_ID} --instance-initiated-shutdown-behavior terminate --block-device-mappings \"[{\"DeviceName\":\"/dev/sda1\",\"Ebs\":{\"VolumeSize\":$instanceDiskVolumeSize,\"DeleteOnTermination\":true,\"Encrypted\":true}}]"
#echo "cmd:$cmd"
```

Lines 269-270:
```
#instance=$( eval ${cmd} )
#instance=$( aws ec2 run-instances --launch-template LaunchTemplateId=lt-0f4cd6101ec4d94ea --count 1 --key-name HPCC-Platform-Smoketest --instance-initiated-shutdown-behavior terminate --block-device-mappings "[{\"DeviceName\":\"/dev/sda1\",\"Ebs\":{\"VolumeSize\":$instanceDiskVolumeSize,\"DeleteOnTermination\":true,\"Encrypted\":true}}]" 2>&1 )
```

Line 453:
```
#[[  "candidate-8.6.x candidate-8.4.x candidate-8.2.x" =~ "$BASE" ]] && VCPKG_INSTALLS_NEWER_VERSION=0 || VCPKG_INSTALLS_NEWER_VERSION=1
```

Lines 511-512:
```
# CentOS 8
                #res=$( rsync -vapE --timeout=60 -e "ssh -i ${SSH_KEYFILE} ${SSH_OPTIONS}" ${SMOKETEST_HOME}/init-cos8.sh centos@${instancePublicIp}:/home/centos/init.sh 2>&1 )
```
        
Lines 516-518:
```
#    WriteLog "Set it to executable" "$LOG_FILE"
#    res=$( ssh -i ${SSH_KEYFILE} ${SSH_OPTIONS} centos@${instancePublicIp} "chmod +x init.sh" 2>&1 )
#    WriteLog "Res: $res" "$LOG_FILE"
```

Line 656:
```
#res=$( rsync -va --timeout=60 -e "ssh -i ${SSH_KEYFILE} ${SSH_OPTIONS}" centos@${instancePublicIp}:/home/centos/smoketest/${INSTANCE_NAME}/build/vcpkg_buildtrees/*/*.log ${SMOKETEST_HOME}/${INSTANCE_NAME}/ 2>&1 )
```

