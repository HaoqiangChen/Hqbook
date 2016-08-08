<!-- @author chenhaoqiang (chenhaoqiang.irxk@gmail.com) -->
<!-- @date    2019-08-01 10:30:36 -->
# hqbook 介绍
学的不仅是技术，更是人生！

hqbook其实是我个人平时学习笔记，就是零散记点编程知识点。方便平时查阅。并且把hqbook利用GitHub / Git和Markdown 构建成精美的书籍。

## 作者
大家叫我小浩就OK啦，后面有必要我也会用小浩自称

## 本项目地址

- 仓库：https://github.com/HaoqiangChen/hqbook
- 在线阅读：https://haoqiangchen.github.io/hqbook/

## Build Setup
克隆代码到本地之后，可以查看本书 [Gitbook](gitbook/README.md) 笔记了解如何运行本项目。

```bash
# 如果 gitbook 没有安装，运行下面的命令，如果有，忽略它
npm install -g gitbook-cli

# 安装依赖
gitbook install
or
npm install (推荐)

# 启动服务和热更新并打开 "localhost:4000"
gitbook serve

# 打包压缩项目
gitbook build

# "gitbook serve"时其实已经打包好到 _book 并运行项目的，所以可以省略打包步骤，
# 直接将 _book 重命名为 docs，这样子可以直接构建部署到 GitHub pages，
# 注意在 GitHub 上将项目设置里的 GitHub pages 网站构建选择为 "master/branch /docs folder"
rename _book docs

# 删除docs文件夹内所有md文件，避免GitHub pages构建失败
del /S /Q docs\*.md
```

## 技术栈

### HTML / CSS

* [HTML](Frontend/HTML/README.md "HTML")
* [HTML5](Frontend/HTML5/README.md "HTML5")
* [CSS](Frontend/CSS/README.md "CSS")
* [CSS3](Frontend/CSS/CSS3.md "CSS3")
* `Bootstrap3`：待记录
* `Font Awesome`：待记录
* `Foundation`：待记录

### JavaScript

* [JavaScript](Js/JavaScript/README.md "JavaScript")
* `jQuery`：待记录
* `AngularJS`：待记录
* `Vue.js`：待记录
* `React`：待记录

### 服务端

* `Python`：待记录
* `Linux`：待记录
* `Docker`：待记录
* `Ruby`：待记录
* `Java`：待记录

### 数据库

* `SQL`：待记录
* `Mysql`：待记录
* `PostgreSQL`：待记录
* `SQLite`：待记录
* `MongoDB`：待记录

### 移动端

* `Android`：待记录
* `Swift`：待记录
* `jQuery Mobile`：待记录
* `ionic`：待记录
* `Kotlin`：待记录

### Web Service

* `Web Service`：待记录
* `WSDL`：待记录
* `SOAP`：待记录
* `RSS`：待记录
* `RDF`：待记录

### 开发工具

* [Gitbook](Tools/gitbook/README.md "Gitbook")
* [Markdown](Tools/markdown/README.md "Markdown")
* `Eclipse`：待记录
* `Git`：待记录
* `Svn`：待记录

### 网站建设

* `HTTP`：待记录
* `网站建设指南`：待记录
* `浏览器信息`：待记录
* `网站主机教程`：待记录
* `TCP/IP`：待记录
* `W3C`：待记录
* `网站品质`：待记录

### 其他

* `其他`：待记录

## 最后

如果觉得我的笔记还不错的话 <i class="fa fa-thumbs-up" /> ，就给个`star` <i class="fa fa-star" style="font-size: 20px;color: goldenrod;"></i> 鼓励一下吧~
