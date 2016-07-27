@echo off
chcp 65001

title "gitbook打包脚本"

echo "删除之前打包的docs文件夹"
call rimraf docs

echo "将打包好的_book文件夹重命名为docs以便自动部署到GitHub pages"
rename _book docs

echo "打包除了生成的HTML文件，还会有原markdown文件，有时候会影响部署GitHub pages"
echo "所以为了方便，我直接将.md文件全部删除"
del /S /Q docs\\*.md

pause
