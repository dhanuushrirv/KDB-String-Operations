words: ("believe";"chief";"friend";"piece";"ceiling";"receipt";"deceive";"perceive";"height";"science";"weird";"their";"neighbor";"fierce")
words: " " sv words;
finalList:  " " vs words;

/define the regex pattern
ie_not_c : "*[^c]ie*" ; /'ie' not preceded by 'c'
ei_not_c : "*[^c]ei*" ; /'ei' not preceded by 'c'
ei_after_c: "*cie*"   ; /'ei' preceded by 'c'
ie_after_c : "*cei*"  ; /'ie' preceded by 'c'


/check the count
count_ie_not_c : count finalList where finalList like ie_not_c;
count_ei_not_c : count finalList where finalList like ei_not_c;
count_ie_after_c : count finalList where finalList like ie_after_c;
count_ei_after_c : count finalList where finalList like ei_after_c;

/check if phrase is plausible
rule_1: count_ie_not_c >= 2* count_ie_after_c;
rule_2: count_ei_not_c >= 2* count_ei_after_c;

/ Print results
show (`Rule1; count_ie_not_c; count_ei_not_c; rule_1)
show (`Rule2; count_ei_after_c; count_ie_after_c; rule_2)

/to check overall plausibility
$[rule_1 & rule_2; "It is plausible"; "It is not plausible"]
