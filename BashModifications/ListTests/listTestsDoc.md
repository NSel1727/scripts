##Comment Removals

Line 26:
```
#param=${param//-/}
```

Lines 50-59:
```
#    pushd ~/smoketest/ScheduleInfos; 
			  #    rsync -va ../PR-*/scheduler-*.test ../PR-*/result*.log . ; 
			  #    rsync -va ../OldPrs/PR-*/scheduler-*.test ../OldPrs/PR-*/result*.log . ; 
			  #
			  #    echo "-----------------------------------------"; 
			  #    echo "List of scheduled test:"; 
			  #    echo ""; 
			  #
			  #    find . -iname 'scheduler-'"$testDay"'*.test' -exec /usr/bin/bash -c "cat '{}' |  egrep -i 'Instance name|Commit Id|Instance Id' | cut -d' ' -f5 | tr -d \' | paste -d, -s - | cut -d',' -f1,2,3 --output ', ' | awk -F \",\" '{ print $3 }' " \; ;
			  #    popd > /dev/null
```
			  
Lines 89-90:
```
#PRs=("test")
#res=$( find OldPrs/PR-*/ PR-*/ -iname 'scheduler*-'"$testDay"'*.test' -exec bash -c "cat '{}' |  egrep -i 'Instance name|Commit Id|Instance Id|An error' | cut -d' ' -f5 | tr -d \' | paste -d, -s - | cut -d',' -f1,2,3 --output ', ' | awk -F \",\" '{ print $3 }' " \; )
```

Line 92:
```
#find OldPrs/PR-*/ PR-*/ -iname 'scheduler-'"$testDay"'*.test' -print | while read fn
```

Line 97:
```
#echo "$fn"
```

Line 101:
```
#item=$(cat $fn | egrep -i 'Param: (Instancename|CommitId)|Instance Id' | cut -d' ' -f4,5 | tr -d \' | tr '=' ' ' | cut -d' ' -f 2 | paste -d, -s - | cut -d',' -f1,2,3 --output ',' )
```

Line 105:
```
#timestamp=$( cat $fn | egrep 'Start:' | tr -d '\t' )
```

Line 107:
```
#echo "$cnt, $item ($timestamp)"
```

Line 110:
```
#echo "${arr[@]}"
```

Line 137:
```
#done < <(find OldPrs/PR-*/ PR-*/ -iname 'scheduler-'"$testDay"'*.test' -print | sort )
```

Lines 154-155:
```
#[[ $cnt -eq 0 ]] && echo "None"
#[[ -n "$res" ]] && echo "$res" || echo "None"
```
				
Lines 165-166:
```
#res=$( find OldPrs/PR-*/ -iname 'result-'"$testDay"'*.log' -type f -printf "\n" -print -exec bash -c "egrep '\s+Process PR-|\s+sha\s+:|\s+Summary\s+:|\s+pass :' '{}' | tr -d '\t' | tr -s ' ' | paste -d, -s - | sed 's/ : /: /g' | sed -e 's/ : /: /' -e 's/,\(\s*\)/, /g' " \; )
#[[ -n "$res" ]] && echo "$res" || echo "None"
```

Lines 184-185:
```
#res=$( find PR-*/ -iname 'result-'"$testDay"'*.log' -type f -printf "\n" -print -exec bash -c "egrep '\s+Process PR-|\s+sha\s+:|\s+Summary\s+:|\s+pass :' '{}' | tr -d '\t' | tr -s ' ' | paste -d, -s - | sed 's/ : /: /g' | sed -e 's/ : /: /' -e 's/,\(\s*\)/, /g' " \; )
#[[ -n "$res" ]] && echo "$res" || echo "None"
```

Line 210:
```
#find OldPrs/PR-* -iname 'RelWithDebInfo_Build*' -type f -exec egrep -H 'RTE changed' '{}' \;
```

Line 216:
```
#find PR-*/ -iname 'RelWithDebInfo_Build*' -type f -exec egrep -H 'RTE changed' '{}' \;
```

Lines 223-232:
```
# To create one line digest with all information what we need
				#unset -v IFS # restore IFS to default
				#
				#echo "PRs:"
				#max=${#PRs[@]}
				#for ((i=0; i <$max; i++))
				#do
				#    pr=${!PRs[$i]}
				#    echo "$i -> ${pr}"
				#done
```

