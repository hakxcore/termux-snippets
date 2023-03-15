

curl https://api.rootnet.in/covid19-in/stats/latest | jq -r '.[] | [.loc, .confirmedCasesIndian, .confirmedCasesForeign, .discharged, .deaths, .totalConfirmed] | @csv' | awk -v FS="," 'BEGIN{print "LOC\tConfirmedIndian\tconfirmedForeign\tDischarged\tDeaths\TotalConfirmed";print "=================================================================================="}{printf "%s\t%s%s",$1,$2,ORS}'
