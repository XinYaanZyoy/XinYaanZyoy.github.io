#!/bin/bash
echo Start of stamp updatation;
stamp=$(date);
echo $stamp;
echo $'\n'"git status: $(git status)"$'\n';
sed -i -e "s/\(<i>\).*\(<\/i>\)/<i>$stamp<\/i>/g" index.md
echo $'\n'"git status: $(git status)"$'\n';
if [ "$status" = true ]; then
            git config --global user.name XinYaanZyoy && git config --global user.email XinYaanZyoy@gmail.com
            git commit -a -m "timestamp: $stamp"
            git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
fi
echo End Of stamp updatation;
