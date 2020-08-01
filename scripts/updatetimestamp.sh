#!/bin/bash
echo Start of stamp updatation;
stamp=$(date);
echo $stamp;
echo $'\n'"git status: $(git status)"$'\n';
sed -i -e "s/\(<i>\).*\(<\/i>\)/<i>$stamp<\/i>/g" "_includes/header.html"
echo $'\n'"git status: $(git status)"$'\n';
git config --global user.name XinYaanZyoy && git config --global user.email XinYaanZyoy@gmail.com
git add "_includes/header.html"
git commit -m "timestamp: $stamp"
git pull --rebase origin master
git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
echo End Of stamp updatation;
