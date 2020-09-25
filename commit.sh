#!/bin/bash

changes=$(git status | awk '/notes.tex/ {print $2}') # Get changed note document
len=${#changes}

if [ $len -ge 20 ]; then
    read -p '2 or more notes. Commit all (y/n)? ' inp
    if [[ "$inp" =~ ^[Yy]$ ]]; then
        repeat=$"1"
    fi
elif [ $len -eq 0 ]; then
    echo 'No new notes.'
    exit 0
fi

file=$(echo $changes | cut -c -19) # Trim to file name (SUBJ10001/notes.tex)
subj=$(echo $file | cut -c -9) # Trim to subject name (SUBJ10001)

pdflatex -shell-escape -synctex=1 -interaction=nonstopmode \
    -file-line-error -output-directory $subj $file > /dev/null

if [ $? -ne 0 ]; then
    echo "Ran into error compiling $file. Exiting."
    exit 1
fi

cp "$subj/notes.pdf" "_pdfs/$subj.pdf"
git add $file
git add "_pdfs/$subj.pdf"

prev_lec_no=$(awk "/$subj/ {print \$2}" lecture.txt)
this_lec_no=$((prev_lec_no+1))

sed -i "s/$subj $prev_lec_no/$subj $this_lec_no/" lecture.txt # Update lecture no counter 
git add "lecture.txt"

commit_msg="$subj lecture $this_lec_no"

git commit -m "$commit_msg"

if [ ! -z "$repeat" ]; then
    ./$(basename $0) # Re-run script.
else
    git push
fi
