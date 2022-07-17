git show-ref --tag | awk '{print ":" $2}' | xargs git push origin # 删除远程所有标签
git tag -l | xargs git tag -d # 删除本地所有标签
