@echo off
chcp 65001

title 启动gitbook服务

echo 启动服务和热更新并打开`localhost:4000`
gitbook serve
