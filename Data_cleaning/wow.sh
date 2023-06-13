#!/usr/bin/env bash
while IFS= read -r line
emoji="\U1f300-\U1f5ff\U1f900-\U1f9ff\U1f600-\U1f64f\U1f680-\U1f6ff\U2600-\U26ff\U2700-\U27bf\U1f1e6-\U1f1ff\U1f191-\U1f251\U1f004\U1f0cf\U1f170-\U1f171\U1f17e-\U1f17f\U1f18e\U3030\U2b50\U2b55\U2934-\U2935\U2b05-\U2b07\U2b1b-\U2b1c\U3297\U3299\U303d\U00a9\U00ae\U2122\U23f3\U24c2\U23e9-\U23ef\U25b6\U23f8-\U23fa"
do
echo -e $line | LC_ALL=UTF-8 sed -e "s/[$(printf $emoji)]//g">>cleaned.txt

done <"outfile1.txt"
