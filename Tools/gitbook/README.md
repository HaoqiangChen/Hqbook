# Gitbook 使用教程
使用 Git 和 Markdown 制作精美在线电子书。

## 支持格式

GitBook支持输出多种文档格式，如：

- 静态站点：GitBook默认输出该种格式，生成的静态站点可直接托管搭载Github Pages服务上；
- PDF：需要安装[ebook-concert](http://calibre-ebook.com/download)依赖；
- eBook：需要安装[ebook-concert](http://calibre-ebook.com/download)；
- 单HTML网页：支持将内容输出为单页的HTML，不过一般用在将电子书格式转换为PDF或eBook的中间过程；
- JSON：一般用于电子书的调试或元数据提取。

## Gitbook项目地址

- GitBook项目官网：<http://www.gitbook.io>
- GitBook Github地址：<https://github.com/GitbookIO/gitbook>
- GitBook 文档中文版：<http://gitbook.hushuang.me/setup.html>

## 安装和使用GitBook {#install}

完成GitBook的安装只需要几分钟。

### GitBook.com

[GitBook.com](https://www.gitbook.com/)为您提供简单高效的图书在线撰写、发布和托管方案， 你可以通过[GitBook.com](https://www.gitbook.com/)进行在线编辑、或者使用[GitBook 本地编辑器](https://www.gitbook.com/editor)在本地电脑上编辑。

### 本地安装gitbook-cli

安装GitBook的最好方法是通过 NPM 安装。在已经安装好NodeJS和NPM的电脑上，通过命令行窗口，输入以下命令安装GitBook：

```bash
$ npm install gitbook-cli -g
```

安装完成之后，你可以使用下面的命令来检验是否安装成功

```bash
$ gitbook -V
CLI version: 2.3.2
GitBook version: 3.2.3
```

如果你看到了上面类似的版本信息，则表示你已经安装成功了。

#### 安装其他版本

gitbook命令可以方便地下载和安装不同版本的GitBook来测试你的书：

```bash
$ gitbook fetch 4.0.0-alpha.1
```

使用gitbook ls-remote列出可用于安装的远程版本。

```bash
$ gitbook ls-remote
Available GitBook Versions:
     4.0.0-alpha.5, ...部分省略..., 4.0.0-alpha.1, 3.2.2, 3.2.1, ...部分省略..., 2.0.0-alpha.1

Tags:
     latest : 3.2.2
     pre : 4.0.0-alpha.5
```

#### 调试

您可以使用--log=debug和--debug来获得更详细的错误消息（堆栈跟踪）。例如：

```bash
$ gitbook serve ./ --log=debug --debug
or
$ gitbook build ./ --log=debug --debug
```

## gitbook-cli命令行使用 {#gitbookCli}

gitbook-cli是一个命令行工具，使用方法：

### 初始化
初始化一本书

    gitbook init

在使用 `gitbook init` 之后本地会生成两个文件 `README.md` 和 `SUMMARY.md` ，这两个文件都是必须的，一个为介绍，一个为目录结构。

### 编辑电子书
首先，GitBook使用SUMMARY.md文件组织整个内容的目录，比如可以新建 `Faq.md` 文件，来记录常见问题，并在 SUMMARY.md 文件中添加目录。

```markdown
# Summary

* [简介](build.md)
* [常见问题](config.md)
```

### 本地预览
当内容书写完毕后，可以在终端中输入如下命令，实现实时预览

```bash
gitbook serve
gitbook serve ./{book_name}
```

`gitbook serve` 命令实际会先调用 `gitbook build` 编译书籍，完成后打开 web 服务器，默认监听本地 4000 端口，在浏览器打开 <http://localhost:4000> 即可浏览电子书。

> [!danger]
> `windows` 系统上启动 `gitbook` 服务后,如果本地文件发生更改,热加载会失败。  
> 由于官方已经停止更新，所以找不到其他方法可以解决。  
> 小浩目前有个不是方法中的方法，如果启动服务器后立即删除 _book 目录,那么之后再怎么修改本地文件都能顺利重启。

### 发布电子书

```bash
gitbook build
gitbook build ./{book_name} --output=./{outputFolde}
gitbook build ./ --log=debug --debug
```

当电子书内容制作好之后，可以使用如下命令来生成 HTML 静态网页版电子书。该命令会在当前文件夹中生成 `_book` 文件夹，这个文件夹中的内容就是静态网页版电子书。

使用 `--log=debug --debug` 可以用来调试，会打印出 stack trace。

### 查看帮助

```bash
$ gitbook -h
```

## 目录结构 {#structure}

GitBook使用[SUMMARY](#summary)文件管理目录结构，文件支持Markdown和Asciidoc两种语法。 GitBook按照[SUMMARY](#summary)文件中的目录结构生成HTML。 如果你通过GitBook创建一本支持多语言文档，目录结构会稍微不同，具体可参考[多语言环境](config.md#language)。

一般GitBook目录如下：

```markdown
.
├── book.json
├── README.md
├── SUMMARY.md
├── chapter-1/
|   ├── README.md
|   └── something.md
└── chapter-2/
    ├── README.md
    └── something.md
```

简单的介绍下每个文件的作用：    

| 文件 | 说明 |
| -------- | ----------- |
| `book.json` | 保存 [配置文件](config.md) 数据 (__可选__) |
| `README.md` | 简介 - 书籍的简单介绍 (**必填**) |
| `SUMMARY.md` | 目录 (参见 [目录管理](#structure)) (__可选__) |
| `GLOSSARY.md` | 字段/注释 - 专业术语列表 (参见 [词汇表](config.md#lexicon)) (__可选__) |

### 静态文件和图像

静态文件是SUMMARY.md中没有列出的文件。所有的静态文件，除非被[忽略文件和文件夹](#ignore)，否则都会被复制到输出中，包含图片、JS、CSS都会复制到对应目录下。

### 忽略文件和文件夹 {#ignore}

GitBook将读取.gitignore、.bookignore和.ignore文件，以获取要忽略的文件和文件夹的列表。被忽略的文件不会被上传到版本中。 这些文件中的格式遵循与.gitignore相同的约定：

```markdown
＃井号代表这是一行注释

＃忽略文件test.md
test.md

＃忽略目录“bin”中的所有内容
bin/*
```

### 以子目录的方式与项目集成

对于软件项目，您可以使用子目录（如docs/）来存储用于项目文档的书。您可以配置[配置](config.md)以指示GitBook可以在其中找到书籍文件的文件夹：

```markdown
.
├── book.json
└── docs/
    ├── README.md
    └── SUMMARY.md
```

`book.json` 中的配置如下：

```markdown
{
    "root": "./docs"
}
```

## 菜单与页面（Summary.md) {#summary}

### Summary

GitBook使用一个 `SUMMARY.md` 文件来定义文档的菜单。
`SUMMARY.md`中`[]`内的内容是标题，`()`内是文档的路径，章节和子章节用四个空格或者`tab`键来分级。

##### 简单示例

```
# 概述

### 第一部分

* [第一部分](part1/README.md)
     * [写作很好](part1/README.md＃writing)
     * [GitBook很不错](part1/README.md＃gitbook)
* [第二部分](part2/README.md)
    * [我们喜欢社交网络](part2/README.md#feedback)
    * [更好的写作工具](part2/README.md#tools)
```

每一个章节都有一个专用的页面（`part1/README.md#`），并被分割成子章节。

#### 锚点

文章可以使用区域导航定位到文件的特定部分。 在md文件结尾使用#号加上文章内容中章节的标题就能实现锚点

```
# 概述

### 第一部分

* [第一部分](part1/README.md)
    * [写作很好](part1/README.md＃writing)
    * [GitBook很不错](part1/README.md＃gitbook)
```


#### 部分

目录可以分为由标题或水平线分隔的部分：

```markdown
# 概述

### 第一部分

* [ 写的很好 ]（part1 / writing.md）
 * [ GitBook的很好 ]（part1 / gitbook.md）

### 第二部分

* [ 我们喜欢反馈 ]（part2 / feedback_please.md）
 * [ 给作者的更好工具 ]（part2 / better_tools.md）

----

* [ 没有标题的最后一部分 ]（part3 / title.md）
```

部分仅是章节的组，没有专用页面，但是根据主题，它将显示在导航中。

### 页面

#### Markdown语法

默认情况下，GitBook的大多数文件都使用Markdown语法。GitBook从中推断出您页面的结构。使用的语法类似于[GitHub Flavored Markdown语法](../markdown/README.md)。也可以选择[AsciiDoc语法](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)。

##### 章节文件示例

```markdown
＃ 本章标题

这是一个很棒地介绍。

## 第1节

Markdown将决定您**书的结构_most_

## 第2节

...

```

#### 顶部描述

页面可以用它作为描述。 它使用`YAML`格式的风格，在三条虚线之间。 文档中也可以不写顶部描述。

> [!Tip|label: **特别提示：**]
> 在没有安装支持插件之前，不要在文件中使用，否则编译或者运行会失败。 

这里有一个基本示例：

```yaml
---
description: This is a short description of my page
---

# The content of my page
...
```

顶部描述的内容可以定义自己的变量，可以参考[页面变量](templating.md#variables)，以便您可以在模板中使用它们。

## Markdown语法

`Markdown`是GitBook的默认解析器，本文档基本上都是[Markdown语法](../markdown/README.md)编写的。当然，你也可以选择[AsciiDoc语法](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)来编写文档。

## AsciiDoc

从·2.0.0·版本开始，GitBook接受AsciiDoc语法文件作为输入格式。

有关格式的更多信息，请参阅[AsciiDoc语法快速参考](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)。

跟markdown一样，GitBook可以从下的面文件来提取结构：`README.adoc`，`SUMMARY.adoc`，`LANGS.adoc`和`GLOSSARY.adoc`。

## 主题 {#theme}

GitBook默认使用[theme-default](https://github.com/GitbookIO/theme-default) 主题，从3.0.0版本开始，可以自定义主题。

> [!Warning]
> 自定义主题可能会导致某些插件不能正常工作。

### 主题的结构

主题是包含模板和资源文件的插件。可以选择只对单独的模板进行替换，因为主题都从默认主题扩展。

| 文件夹 | 说明 |
| -------- | ----------- |
| `_layouts` | 包含所有模板的主文件夹 |
| `_layouts/website/page.html` | 普通页面的模板 |
| `_layouts/ebook/page.html` | 在电子书生成期间正常页面的模板(PDF，ePub，Mobi) |


### 自定义主题

你可以直接从已有的主题创建模板。模板将首先在书的`_layouts`文件夹中解析，然后在已安装的插件/主题中解析。

### 简单的扩展

如果你自定义主题的目的只是让不同的文档和书有不同的显示，你可以使用[模板语法](templating.md)：

```markdown
{% extends template.self %}

{% block body %}
    {{ super() }}
    ... 这将被添加到 "body" 块
{% endblock %}
```

完整的例子可参考主题[API](https://github.com/GitbookIO/theme-api) 。

### 发布主题

主题以`theme-`前缀插件方式发布，可参考([插件文档](config.md))。例如，主题`awesome`将从`theme-awesome`插件加载，然后从`gitbook-plugin-theme-awesome` NPM包加载。

