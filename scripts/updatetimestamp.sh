#!/bin/bash
echo Start of stamp updatation;
echo $'\n'"git status: $(git status)"$'\n';
sed -i -e "s/\(<i>\).*\(<\/i>\)/<i>$stamp<\/i>/g" _layouts/default.html
echo $'\n'"git status: $(git status)"$'\n';
if [ "$status" = true ]; then
            git config --global user.name XinYaanZyoy && git config --global user.email XinYaanZyoy@gmail.com
            git add . && git commit -m "timestamp: $(date)"
            git push "https://XinYaanZyoy:$GH_PAT@github.com/XinYaanZyoy/XinYaanZyoy.github.io.git" HEAD:master
fi
echo End Of stamp updatation;
