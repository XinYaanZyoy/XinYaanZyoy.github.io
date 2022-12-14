#!/bin/bash
echo Start of Journal Entry;
echo $'\n'"git status: $(git status)"$'\n';
DIR="posts";
status=false;
if [ -d "$DIR" ]; then
    echo "changing directory to $DIR";
    cd $DIR;
    TODATE=$(date +%F);
    if [ "$(ls -A)" ]; then
        find *.* -type f -exec echo Found file {} \;
        for f in *.*
            do
                if [ ! -d "../_$DIR" ]; then
                    mkdir "../_$DIR"
                fi
                echo "transforming: $f => "../_$DIR/$TODATE-$f"";
                echo "---"$'\n'"layout: post"$'\n'"title: ${f%.*}"$'\n'"date: $(date)"$'\n'"---" > tmp1;
                echo "<p align=\"right\">- your scion, XinYaanzyoy</p>" > tmp2;
                cat tmp1 $f tmp2 > "../_$DIR/$TODATE-$f";
                status=true;
            done
        if [ "$status" = true ]; then
            echo "changing directory to root of this repo";
            cd ..;
            echo "deleting $DIR";
            rm -r -f $DIR;
            echo $'\n'"git status: $(git status)"$'\n';
            git config --global user.name XinYaanZyoy && git config --global user.email XinYaanZyoy@gmail.com
            git add . && git commit -m "transformation: $(date)"
            git pull --rebase origin master
            git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
        fi
    else
        echo "$DIR is Empty; Skipping Transformation!";
    fi
else
    echo "$DIR doesn't exist!";
fi
echo End Journal Entry;
