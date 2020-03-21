#!/bin/bash

subj=$(git status | awk '/notes.tex/ {print $2}') # Get changed note document
len=${#subj}

if [ $len -ge 20 ]; then
    read -p '2 or more notes. Commit all (y/n)? ' inp
    if [[ "$inp" =~ ^[Yy]$ ]]; then
        repeat=$"1"
    fi
elif [ $len -eq 0 ]; then
    echo 'No new notes.'
    exit 0
fi

git add $subj
subj=$(echo $subj | cut -c -9)
prev_lec_no=$(awk "/$subj/ {print \$2}" lecture.txt)
this_lec_no=$((prev_lec_no+1))

sed -i "s/$subj $prev_lec_no/$subj $this_lec_no/" lecture.txt 
git add lecture.txt

commit_msg="$subj lecture $this_lec_no"

git commit -m $commit_msg
git push

if [ ! -z "$repeat" ]; then
    ./$(basename $0)
fi
