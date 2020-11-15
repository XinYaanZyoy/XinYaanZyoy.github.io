#!/bin/bash
echo Start of note entry;
stamp="$(date)";
year="$(date +%Y)";
month="$(date +%b)";
date="$(date +%d)";
DIR="diary";
status=false;
keyterm="TIMESTAMP"

echo $stamp;
echo $'\n'"git status: $(git status)"$'\n';

if [ -d "$DIR" ]; then
    echo found diary
    if [ -d "$DIR/$year" ]; then
        echo found $year
        if [ -d "$DIR/$year/$month" ]; then
            echo found $month
            if [ -f "$DIR/$year/$month/$date.txt" ]; then
                echo today note already saved
                echo _____
                more "$DIR/$year/$month/$date.txt"
                echo _____
                echo replacing the note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            else
                echo creating today note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            fi
        else
            echo not found $month
            echo creating $month
            mkdir "$DIR/$year/$month"
            echo created $month
            if [ -f "$DIR/$year/$month/$date.txt" ]; then
                echo today note already saved
                echo _____
                more "$DIR/$year/$month/$date.txt"
                echo _____
                echo replacing the note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            else
                echo creating today note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            fi
        fi
    else
        echo not found $year
        echo creating $year
        mkdir "$DIR/$year"
        echo created $year
        if [ -d "$DIR/$year/$month" ]; then
            echo found $month
            if [ -f "$DIR/$year/$month/$date.txt" ]; then
                echo today note already saved
                echo _____
                more "$DIR/$year/$month/$date.txt"
                echo _____
                echo replacing the note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            else
                echo creating today note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            fi
        else
            echo not found $month
            echo creating $month
            mkdir "$DIR/$year/$month"
            echo created $month
            if [ -f "$DIR/$year/$month/$date.txt" ]; then
                echo today note already saved
                echo _____
                more "$DIR/$year/$month/$date.txt"
                echo _____
                echo replacing the note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            else
                echo creating today note
                echo $"$keyterm\n$(< note.txt)" > "$DIR/$year/$month/$date.txt"
                echo saved!
                status=true;
            fi
        fi
    fi
else
    echo $DIR not found
fi

if [ "$status" = true ]; then
  echo $'\n'"git status: $(git status)"$'\n';
  git add "$DIR/$year/$month/$date.txt"
  git commit -m "note-entry: $stamp"
  git pull --rebase origin master
  git push origin master
  echo End Of note entry;
else
  echo something went wrong when noting down!
fi
