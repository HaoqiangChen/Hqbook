@echo off
chcp 65001
echo

title gitbook打包脚本
echo

echo 删除之前打包的 docs文件夹
call rimraf docs
echo

echo 将打包好的_book 文件夹重命名为 docs 以便自动部署到GitHub pages
rename _book docs
echo

echo 打包除了生成的HTML文件，还会有原markdown文件，有时候会影响部署GitHub pages
echo 所以为了方便，我直接将.md文件全部删除
del /S /Q docs\\*.md
echo

pause
