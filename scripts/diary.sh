#!/bin/bash
echo Start of diary entry;
stamp="$(date)";
year="$(date +%Y)";
month="$(date +%b)";
date="$(date +%d)";
DIR="diary";
status=false;

echo $stamp;
echo $'\n'"git status: $(git status)"$'\n';

if [ -d "$DIR" ]; then
    echo found diary
    if [ -d "$year" ]; then
        echo found $year
        if [ -d "$month" ]; then
            echo found $month
            if [ -f "$date" ]; then
                echo found today entry at $DIR/$year/$month/$date.txt;
                echo timestamping...;
                sed -i "1s/.*/$stamp/" "$DIR/$year/$month/$date.txt";
                status=true;
            else
                echo not found todays entry!
            fi
        else
            echo not found $month
        fi
    else
        echo not found $year
    fi
else
    echo $DIR not found
fi

if [ "$status" = true ]; then
    echo $'\n'"git status: $(git status)"$'\n';
    git config --global user.name XinYaanZyoy && git config --global user.email XinYaanZyoy@gmail.com
    git add "diary/*"
    git commit -m "diary-entry: $stamp"
    git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
    echo End Of diary entry;
else
    echo something went wrong while timestamping!
fi
