# 配置 {#config}

GitBook允许您使用灵活的配置来自定义您的书。这些选项在`book.json`文件中指定。对于不熟悉JSON语法的作者，您可以使用[JSONlint之类的](http://jsonlint.com/)工具来验证语法。

## 常规设置

| 变量 | 说明 |
| -------- | ----------- |
| `root` | 包含所有图书文件的根文件夹的路径，除了`book.json`|
| `structure` | 指定自述，摘要，词汇表等的路径。请参见[结构段落](#structure). |
| `title` | 书的标题，默认值从README中提取。在GitBook.com上，此字段已预填。|
| `description` | 您的图书说明，默认值从自述文件中提取。在GitBook.com上，此字段已预填。|
| `author` | 作者姓名。在GitBook.com上，此字段已预填。|
| `isbn` | 书的国际码ISBN |
| `language` | 图书语言的[ISO代码](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) ，默认值是`en` |
| `direction` | 文本的方向。可以是`rtl`或`ltr`，默认值取决于`language`的值 |
| `gitbook` | GitBook的版本。使用[SemVer](http://semver.org)规范并接受诸如`“> = 3.0.0”`的条件|

##### 其他属性设置

- `links`: 在左侧导航栏添加链接信息
```json
"links": {
    "sidebar" : {
        "Home" : "https://www.baidu.com"
    }
}
```

- `styles`: 自定义页面样式， 默认情况下各generator对应的css文件
```json
"styles": {
    "website": "styles/website.css",
    "ebook": "styles/ebook.css",
    "pdf": "styles/pdf.css",
    "mobi": "styles/mobi.css",
    "epub": "styles/epub.css"
}
```
例如使`<h1>` `<h2>`标签有下边框， 可以在`website.css`中设置
```css
h1 , h2{ border-bottom: 1px solid #EFEAEA; }
```

## 结构体

除了`root`变量，你可以告诉Gitbook Readme，Summary，Glossary，Languages的文件名(而不是使用默认名称，如README.md)。 这些文件必须在您的书的根(或每个语言书的根)。不接受诸如`dir/MY_README.md`之类的路径。

| 变量 | 说明 |
| -------- | ----------- |
| `structure.readme` | 自述文件名（默认为`README.md`） |
| `structure.summary` | 摘要文件名（默认为`SUMMARY.md`） |
| `structure.glossary` | 词汇表文件名（默认为`GLOSSARY.md`） |
| `structure.languages` | 语言文件名（默认为`LANGS.md`） |

## PDF选项

PDF输出可以使用`book.json`中的一组选项来定制：

| 变量 | 说明 |
| -------- | ----------- |
| `pdf.pageNumbers` | 在每页底部添加页码（默认为`true`） |
| `pdf.fontSize` | 基本字体大小（默认为`12`）|
| `pdf.fontFamily` | 基本字体系列（默认为`Arial`） |
| `pdf.paperSize` | 纸张尺寸，选项为 `'a0', 'a1', 'a2', 'a3', 'a4', 'a5', 'a6', 'b0', 'b1', 'b2', 'b3', 'b4', 'b5', 'b6', 'legal', 'letter'` (默认为 `a4`) |
| `pdf.margin.top` | 上边距 (默认为 `56`) |
| `pdf.margin.bottom` | 底边距 (默认为 `56`) |
| `pdf.margin.right` | 右边距 (默认为 `62`) |
| `pdf.margin.left` | 左边距 (默认为 `62`) |

## 词汇表 {#lexicon}

您可以指定要显示为注释的术语及其相应的定义。 基于这些术语，GitBook在编译的时候会自动构建索引并在页面中突出显示这些术语。

`GLOSSARY.md`是一个`h2`标题的列表，以及一个描述段落：

```markdown
## 条款
该术语的定义

## 另一个名词
使用它的定义，它可以包含粗体文本
以及所有其他类型的内联标记...
```

## 多种语言 {#language}

GitBook支持多种语言编写的书籍或者文档。 首先需要在根目录创建一个名为`LANGS.md`的文件，然后按照语言创建子目录：

```markdown
# Languages

* [中文](zh/)
* [English](en/)
* [French](fr/)
* [Español](es/)
```

### 每种语言的配置

每个语言(例如：`en`)目录中都可以有一个`book.json`来定义自己的配置，它将作为主配置的扩展。

唯一的例外是插件，插件是全局指定的，语言环境配置不能指定特定的插件。

## Markdown语法

`Markdown`是GitBook的默认解析器，本文档基本上都是[Markdown语法](../markdown/README.md)编写的。当然，你也可以选择[AsciiDoc语法](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)来编写文档。

## AsciiDoc

从·2.0.0·版本开始，GitBook接受AsciiDoc语法文件作为输入格式。

有关格式的更多信息，请参阅[AsciiDoc语法快速参考](https://asciidoctor.org/docs/asciidoc-syntax-quick-reference/)。

跟markdown一样，GitBook可以从下的面文件来提取结构：`README.adoc`，`SUMMARY.adoc`，`LANGS.adoc`和`GLOSSARY.adoc`。

# 插件

可以通过 Gitbook 的插件来扩展 Gitbook 的功能，现有的 Gitbook 插件能够实现数学公式，Google 统计，评论等等功能。

所有的插件都可以从 <https://plugins.gitbook.com/> 获取。

| 变量 | 说明 |
| -------- | ----------- |
| `plugins` | 要加载的插件列表 |
| `pluginsConfig` | 插件配置 |

## 安装插件
Gitbook 安装插件比较简单，需要在项目下添加 `book.json` 文件，然后在其中添加


```json
{
    "plugins": ["plugins1", "plugins2"],
    "pluginsConfig": {
        "plugins1": {}
    }
}
```

注册完插件之后，可以通过下面的命令来安装插件

    gitbook install
    
## Gitbook默认自带5个插件

* highlight：代码高亮，通常会使用 prism 来替换
* search：导航栏查询功能（不支持中文），所以通常会使用 search-pro 来替换
* sharing：右上角分享功能
* font-settings：字体设置（最上方的"A"符号）
* livereload：为GitBook实时重新加载

> [!Tip]
> 可以在插件名称前面加 - 去除自带插件，例如常用去除自带搜索 "plugins": \[ "-search" \]

## 常用的插件

下面列举一些常用的gitbook插件，至于怎么加上自己开发的插件，这里就不多说了，感兴趣的可以看这篇[中文文档](http://gitbook.hushuang.me/plugins/create.html)。

用法：在`book.json`中添加以下内容。然后执行`gitbook install`，或者使用`NPM`安装（单独安装推荐NPM）`npm install gitbook-plugin-插件名`，也可以从源码GitHub地址中下载，放到`node_modules`文件夹里（GitHub地址在进入插件地址右侧的GitHub链接）

#### 修改页面样式

- `ad` 在每个页面顶部和底部添加广告或任何自定义内容 ➡️ <https://github.com/zhaoda/gitbook-plugin-ad>
- `Advanced Emoji` 支持emoji表情 ➡️ <https://github.com/codeclou/gitbook-plugin-advanced-emoji>
- `anchors` 标题带有 github 样式的锚点 ➡️ <https://github.com/rlmv/gitbook-plugin-anchors>
- `anchor-navigation` 锚点导航 ➡️ <https://github.com/yaneryou/gitbook-plugin-anchor-navigation>
- `anchor-navigation-ex` 插件锚导航-EX ➡️ <https://github.com/zq99299/gitbook-plugin-anchor-navigation-ex>
- `auto-scroll-table` 表格滚动条(为避免表格过宽，增加滚动条) ➡️ <https://www.jianshu.com/p/427b8bb066e6>
- `autotheme` 自动换肤插件(早中晚自动切换) ➡️ <https://github.com/willin/gitbook-plugin-autotheme>
- `change_girls` 可自动切换的背景 ➡️ <https://github.com/zhenchao125/gitbook-plugin-change_girls>
- `custom-favicon` 修改标题栏图标 ➡️ <https://github.com/Bandwidth/gitbook-plugin-custom-favicon>
- `chapter-fold` 左侧目录折叠 ➡️ <https://github.com/ColinCollins/gitbook-plugin-chapter-fold>
- `expandable-chapters` 收起或展开章节目录中的父节点 ➡️ <https://github.com/DomainDrivenArchitecture/gitbook-plugin-expandable-chapters>
- `expandable-chapters-small` 折叠侧边栏 ➡️ <https://github.com/lookdczar/gitbook-plugin-expandable-chapters-small-auto>
> [!note|label: 这三款目录折叠的区别是：]
> `expandable-chapters-small` 和 `expandable-chapters` 效果相同，唯一不同的是`expandable-chapters`这个插件的箭头粗；  
> 另外这两款只有点击箭头才能实现折叠扩展。不如`【chapter-fold 左侧目录折叠】`好用
- `editlink` 顶部显示编辑此页 ➡️ <https://github.com/zhaoda/gitbook-plugin-editlink>
- `emphasize` 为文字加上底色 ➡️ <https://github.com/GitbookIO/plugin-emphasize>
- `favicon` 更改网站的 favicon.ico ➡️ <https://github.com/menduo/gitbook-plugin-favicon>
- `flexible-alerts` 将块引用转换为漂亮的警报 ➡️ <https://github.com/zanfab/gitbook-plugin-flexible-alerts>
- `github-buttons` 显示 github 仓库的**star**和**fork**按钮 ➡️ <https://github.com/azu/gitbook-plugin-github-buttons>
- `hide-element` 隐藏元素 ➡️ <https://github.com/gonjay/gitbook-plugin-hide-element>
- `insert-logo` 将logo插入到导航栏上方中 ➡️ <https://github.com/matusnovak/gitbook-plugin-insert-logo>
- `localized-footer` 为 Gitbook 每一个页面添加页脚 ➡️ <https://github.com/noerw/gitbook-plugin-localized-footer#readme>
- `prism` 基于 Prism 的代码高亮 ➡️ <https://github.com/gaearon/gitbook-plugin-prism>
- `page-copyright` 自定义页面页脚版权（内容多） ➡️ <https://github.com/skyFi/gitbook-plugin-page-footer>
- `splitter` 在左侧目录和右侧内容之间添加一个可以拖拽的栏，用来调整两边的宽度 ➡️ <https://github.com/yoshidax/gitbook-plugin-splitter>
- `styles-sass` 使用 SASS 替换 CSS ➡️ <https://github.com/GitbookIO/plugin-styles-sass>
- `styles-less` 使用 LESS 替换 CSS ➡️ <https://github.com/GitbookIO/plugin-styles-less>
- `sectionx` 分离各个段落，并提供一个展开收起的按钮 ➡️ <https://github.com/ymcatar/gitbook-plugin-sectionx>
- `tbfed-pagefooter` 自定义页脚，显示版权和最后修订时间 ➡️ <https://github.com/zhj3618/gitbook-plugin-tbfed-pagefooter>
- `theme-fexa` 基于gitbook主题机制定制的主题 ➡️ <https://github.com/tonyyls/gitbook-plugin-theme-fexa>

#### 功能增强

- `ace` 插入代码高亮编辑器 ➡️ <https://github.com/ymcatar/gitbook-plugin-ace>
- `atoc` 插入 TOC 目录 ➡️ <https://github.com/willin/gitbook-plugin-atoc>
- `accordion` 手风琴，可以实现将内容隐藏起来 ➡️ <https://github.com/artalar/gitbook-plugin-accordion>
- `back-to-top-button` 回到顶部 ➡️ <https://github.com/stuebersystems/gitbook-plugin-back-to-top-button>
- `book-summary-scroll-position-saver` 自动保存左侧目录区域导航条的位置 ➡️ <https://github.com/yoshidax/gitbook-plugin-book-summary-scroll-position-saver>
- `baidu` 使用百度统计 ➡️ <https://github.com/poppinlp/gitbook-plugin-baidu>
- `click-reveal` 默认隐藏，点击可显示。 ➡️ <https://github.com/c4software/gitbook-plugin-click-reveal>
- `code` 代码添加行号&复制按钮 ➡️ <https://github.com/davidmogar/gitbook-plugin-code>
- `copy-code-button` 为代码块添加复制的按钮 ➡️ <https://github.com/WebEngage/gitbook-plugin-copy-code-button>
- `chart` 使用 C3.js 图表 ➡️ <https://github.com/csbun/gitbook-plugin-chart>
- `Donate` Gitbook 捐赠打赏插件 ➡️ <https://github.com/willin/gitbook-plugin-donate>
- `disqus` 添加 disqus 评论插件 ➡️ <https://github.com/GitbookIO/plugin-disqus>
- `duoshuo` 使用多说评论 ➡️ <https://github.com/codepiano/gitbook-plugin-duoshuo>
- `ga` 添加 Google 统计代码 ➡️ <https://github.com/GitbookIO/plugin-ga>
- `include-codeblock` 通过引用文件插入代码 ➡️ <https://github.com/azu/gitbook-plugin-include-codeblock>
- `jsfiddle` 插入 JSFiddle 组件 ➡️ <https://github.com/Mavrin/gitbook-plugin-jsfiddle>
- `jsbin` 插入 JSBin 组件 ➡️ <https://github.com/jcouyang/gitbook-plugin-jsbin>
- `mygitalk` 基于gitalk的评论插件 ➡️ <https://github.com/snowdreams1006/gitbook-plugin-mygitalk>
- `search-plus` 支持中文搜索插件 ➡️ <https://github.com/lwdgit/gitbook-plugin-search-plus>
- `search-pro` 高级搜索（支持中文） ➡️ <https://github.com/gitbook-plugins/gitbook-plugin-search-pro>
- `sitemap` 生成站点地图 ➡️ <https://github.com/GitbookIO/plugin-sitemap>
- `theme-api` 编写 API 文档 ➡️ <https://github.com/GitbookIO/theme-api>
- `mcqx` 交互式多选插件 ➡️ <https://github.com/ymcatar/gitbook-plugin-mcqx>
- `spoiler` 隐藏答案，当鼠标划过时才显示 ➡️ <https://github.com/ymcatar/gitbook-plugin-spoiler>
- `redirect` 重定向页面跳转 ➡️ <https://github.com/ketan/gitbook-plugin-redirect>
- `page-treeview` 生成页内目录 ➡️ <https://github.com/aleen42/gitbook-treeview>
- `simple-page-toc` 生成本页目录 ➡️ <https://github.com/stuebersystems/gitbook-plugin-simple-page-toc>
- `page-toc-button` 悬浮目录 ➡️ <https://github.com/stuebersystems/gitbook-plugin-page-toc-button>
- `Puml` 使用 PlantUML 展示 uml 图 ➡️ <https://github.com/GitbookIO/plugin-puml>
- `klipse` 嵌入类似IDE的功能,可在代码段中实时交互，即（输入代码 > 执行结果 ➡️ <https://github.com/brian-dawn/gitbook-plugin-klipse>
- `Todo` 添加 Todo 功能 ➡️ <https://github.com/ly-tools/gitbook-plugin-todo>
- `include-csv` 展示 csv 文件内容 ➡️ <https://github.com/TakuroFukamizu/gitbook-plugin-include-csv>
- `musicxml` 支持 musicxml 格式的乐谱渲染 ➡️ <https://github.com/ymcatar/gitbook-plugin-musicxml>
- `versions-select` 添加版本选择的下拉菜单，针对文档有多个版本的情况 ➡️ <https://github.com/prescottprue/gitbook-plugin-versions-select>
- `rss` 添加 rss 订阅功能 ➡️ <https://github.com/denysdovhan/gitbook-plugin-rss>
- `multipart` 将书籍分成几个部分 ➡️ <https://github.com/citizenmatt/gitbook-plugin-multipart>
- `url-embed` 嵌入动态内容 ➡️ <https://github.com/basilvetas/gitbook-plugin-url-embed>
- `pageview-count` 阅读量计数 ➡️ <https://github.com/tinys/gitbook-plugin-pageview-count>

#### 查看图片

- `image-captions` 抓取内容中图片的`alt`或`title`属性，在图片下面显示标题 ➡️ <https://github.com/todvora/gitbook-plugin-image-captions>
- `popup` 单击图片，在新页面查看大图。 ➡️ <https://github.com/somax/gitbook-plugin-popup>
- `lightbox` 点击图片可显示，大小不变 ➡️ <https://github.com/vongola12324/gitbook-plugin-lightbox>


#### 数学插件 & Tex {#mathjax}

- `fbqx` 使用填空题 ➡️ <https://github.com/Erwin-Chan/gitbook-plugin-fbqx>
- `Graph` 使用 function-plot 绘制数学函数图 ➡️ <https://github.com/cjam/gitbook-plugin-graph>
- `katex` 使用KaTex进行数学排版 ➡️ <https://github.com/GitbookIO/plugin-katex>
- `latex-codecogs` 使用数学方程式 ➡️ <https://github.com/GitbookIO/plugin-latex-codecogs>
- `mathjax` 支持数学方程式 ➡️ <https://www.mathjax.org/>
- `mermaid` 使用流程图 ➡️ <https://github.com/JozoVilcek/gitbook-plugin-mermaid>

> [!note|label: **MathJax 和 KaTeX 的区别**] 
> `mathjax` 和 `katex` 插件是 Tex 公式绘制的不同实现，它们基于各自的开源库：[KaTeX](https://www.mathjax.org/) 和 [MathJax](https://www.mathjax.org/) 。  
> MathJax 支持整个 Tex 语法，但是在制作电子书版本时不是很完美。 KaTex 在所有格式（网页和电子书）的绘制上都很完美，但是还不支持 所有的语法。

### 更多其他插件选择

* <https://www.cnblogs.com/mingyue5826/p/10307051.html>
* <https://www.jianshu.com/p/53fccf623f1c>
* <https://www.jianshu.com/p/427b8bb066e6>

### book.json配置（直接用本书配置来说明） {#bookjson}

```json
{
  "title": "hqbook",
  "author": "Haoqiang Chen",
  "description": "平时零散编程笔记收录手册，以便日后查阅。",
  "keywords": "编程,markdown,笔记",
  "introduction": {
    "path": "README.md",
    "title": "hqbook"
  },
  "links": {
    "home": false,
    "about": false,
    "issues": false,
    "contribute": false,
    "tail": {
      "GitHub地址": "https://github.com/HaoqiangChen/hqbook"
    },
    "gitbook": false,
    "sharing": {
      "google": true,
      "facebook": true,
      "twitter": true,
      "weibo": true,
      "qrcode": true
    }
  },
  "variables": {
    "themeColor": "#3884ff",
    "themeHqbook": {
      "nav": [
        {
          "url": "https://www.baidu.com",
          "target": "_blank",
          "name": "百度一下"
        },
        {
          "url": "http://jsrun.net/",
          "target": "_blank",
          "name": "JSRUN"
        },
        {
          "url": "https://www.runoob.com/",
          "target": "_blank",
          "name": "菜鸟教程"
        },
        {
          "url": "https://www.atool99.com/",
          "target": "_blank",
          "name": "ATOOL在线工具"
        }
      ]
    }
  },
  "plugins": [
    "-highlight",
    "-lunr",
    "-search",
    "theme-hqbook",
    "chapter-fold",
    "flexible-alerts",
    "prism",
    "search-pro",
    "sitemap"
  ],
  "pluginsConfig": {
    "fontSettings": {
      "theme": "white",
      "family": "serif",
      "size": 1
    },
    "chapter-fold": {},
    "flexible-alerts": {
      "style": "flat",
      "note": {
        "label": "笔记"
      },
      "tip": {
        "label": "提示"
      },
      "warning": {
        "label": "警告",
        "icon": "fa fa-warning",
        "className": "warning"
      },
      "danger": {
        "label": "注意",
        "icon": "fa fa-exclamation-triangle",
        "className": "danger"
      }
    },
    "localized-footer": {
      "hline": true,
      "filename": "./FOOTER.md"
    },
    "prism": {
      "css": [
        "gitbook-plugin-theme-hqbook/_themes/prism-xonokai.css"
      ]
    },
    "styles": {
      "website": "styles/website.css"
    },
    "theme-hqbook": {
      "favicon": "./favicon.ico",
      "logo": "../../images/home/logo.png",
      "search-placeholder": "输入关键字搜索",
      "copyLines": false,
      "hide-elements": [
        ".summary .gitbook-link"
      ]
    },
    "sitemap": {
      "hostname": "https://haoqiangchen.github.io/hqbook/"
    }
  },
  "pdf": {
    "toc": true,
    "pageNumbers": true,
    "fontSize": 12,
    "paperSize": "a4",
    "margin": {
      "right": 62,
      "left": 62,
      "top": 36,
      "bottom": 36
    }
  }
}


```

