# git tag与git commit没有关系

## 发布新标签

```shell
sh reset_tag.sh
git push --tag
```

## 标签说明

```shell
git tag -d <mdbook version> # 删除本地指定标签
git show-ref --tag | awk '{print ":" $2}' | xargs git push origin # 删除远程所有标签
git tag -l | xargs git tag -d # 删除本地所有标签
git tag <mdbook version>
git push --tag
```
- git tag <lightweght_name>：为当前分支所在的提交记录打上轻量标签。
- git tag <lightweght_name> <commit SHA-1 value>：为某次具体的提交记录打上轻量标签。
- git tag -a <anotated_name> -m <tag_message>：为当前分支所在的提交记录打上附注标签。
- git tag：列出所有的标签名。
- git tag -d <tag_name>：删除某个标签，本质上就是移除 .git/refs/tags/ 中对应的文件。
- git show <tag_name>：显示标签对应提交记录的具体信息。
- git push <remote> <tag_name>：推送某个标签到远程仓库。
- git push <remote> --tags：推送所有标签到远程仓库。
- git push <remote> --delete <tag_name>：删除远程仓库中的某个标签。

