!/bin/sh
# This script will automatically perform nuclie scan for targets all subdomain.

for trg in $(cat target_list.txt)
do
        file1=$(date +%d-%m-%y)_$trg
        echo "Scanning In progress for target $trg";
        subfinder -d $trg -silent | httpx -silent | nuclei  -o $file1 -silent
        echo "Scanning Completed..! for target $trg and Results are saved in $file1";
done

# Sending slack notification to #appsec_test channel (TEAM) for issues other than info severity.

issue_alert=$(cat $(date +%d-%m-%y)* | grep -v info)

web_hook_url_slack='https://hooks.slack.com/services/T023L8G4934/B02FV8BN7KN/w1AgZLSXwCEK9bWfXXXXXX'

curl -X POST --header 'Content-type:application/json' --data "{'summary':'Nuclei Scan Result','text':'$issue_alert'}" $web_hook_url_slack
