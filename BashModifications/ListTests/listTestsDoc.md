##Comment Removals

Line 26: "#param=${param//-/}"

Lines 50-59: "#    pushd ~/smoketest/ScheduleInfos; 
			  #    rsync -va ../PR-*/scheduler-*.test ../PR-*/result*.log . ; 
			  #    rsync -va ../OldPrs/PR-*/scheduler-*.test ../OldPrs/PR-*/result*.log . ; 
			  #
			  #    echo "-----------------------------------------"; 
			  #    echo "List of scheduled test:"; 
			  #    echo ""; 
			  #
			  #    find . -iname 'scheduler-'"$testDay"'*.test' -exec /usr/bin/bash -c "cat '{}' |  egrep -i 'Instance name|Commit Id|Instance Id' | cut -d' ' -f5 | tr -d \' | paste -d, -s - | cut -d',' -f1,2,3 --output ', ' | awk -F \",\" '{ print $3 }' " \; ;
			  #    popd > /dev/null"
			  
Lines 89-90: "#PRs=("test")
			  #res=$( find OldPrs/PR-*/ PR-*/ -iname 'scheduler*-'"$testDay"'*.test' -exec bash -c "cat '{}' |  egrep -i 'Instance name|Commit Id|Instance Id|An error' | cut -d' ' -f5 | tr -d \' | paste -d, -s - | cut -d',' -f1,2,3 --output ', ' | awk -F \",\" '{ print $3 }' " \; )"

Line 97: "#echo "$fn""

Line 101: "#item=$(cat $fn | egrep -i 'Param: (Instancename|CommitId)|Instance Id' | cut -d' ' -f4,5 | tr -d \' | tr '=' ' ' | cut -d' ' -f 2 | paste -d, -s - | cut -d',' -f1,2,3 --output ',' )"


