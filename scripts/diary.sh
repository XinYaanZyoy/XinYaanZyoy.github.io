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
    if [ -d "$DIR/$year" ]; then
        echo found $year
        if [ -d "$DIR/$year/$month" ]; then
            echo found $month
            if [ -f "$DIR/$year/$month/$date.txt" ]; then
                echo found today entry at $DIR/$year/$month/$date.txt;
                fline=$(head -n 1 filename);
                echo fline is $fline
                if [ "$fline" = "TIMESTAMP" ]; then
                    echo timestamping...;
                    sed -i "1s/.*/$stamp/" "$DIR/$year/$month/$date.txt";
                    status=true;
                else
                    echo already time stamped
                    status=false;
                fi
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
    git add "$DIR/$year/$month/$date.txt"
    git commit -m "diary-entry: $stamp"
    git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
    echo End Of diary entry;
else
    echo either there is no need of timestamping or something went wrong when timestamping!
fi
