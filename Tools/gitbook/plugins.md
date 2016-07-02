# 插件
可以通过 Gitbook 的插件来扩展 Gitbook 的功能，现有的 Gitbook 插件能够实现数学公式，Google 统计，评论等等功能。

所有的插件都可以从 <https://plugins.gitbook.com/> 获取。

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

* highlight：代码高亮
* search：导航栏查询功能（不支持中文）
* sharing：右上角分享功能
* font-settings：字体设置（最上方的"A"符号）
* livereload：为GitBook实时重新加载

## 常用的插件

下面列举一些常用的gitbook插件，至于怎么加上自己开发的插件，这里就不多说了，感兴趣的可以看这篇[中文文档](http://gitbook.hushuang.me/plugins/create.html)。

记录一些实用的插件
用法：在`book.json`中添加以下内容。然后执行`gitbook install`，或者使用`NPM`安装（单独安装推荐NPM）`npm install gitbook-plugin-插件名`，也可以从源码GitHub地址中下载，放到`node_modules`文件夹里（GitHub地址在进入插件地址右侧的GitHub链接）

### 修改页面样式

- [editlink](https://plugins.gitbook.com/plugin/editlink) 顶部显示编辑此页
- [image captions](https://plugins.gitbook.com/plugin/image-captions) 抓取图片中 `alt` 或者 `title` 属性显示在图片下
- [anchors](https://plugins.gitbook.com/plugin/styles-sass) 标题带有锚点
- [splitter](https://plugins.gitbook.com/plugin/splitter) 侧边栏可以调解宽度
- [localized-footer](https://github.com/noerw/gitbook-plugin-localized-footer#readme) 为 Gitbook 每一个页面添加页脚
- Expandable-chapters-small  使左侧的章节目录可以折叠

### 功能增强

- [disqus](https://plugins.gitbook.com/plugin/disqus) Disqus 评论插件
- Search Plus 增强搜索，支持中文
- Sharing Plus 分享增强
- KaTex 支持数学公式
- mathjax 支持数学方程式
- Chart 绘制图形
- rss 添加 rss 订阅功能
- Edit Link 链接到当前页源文件上
- Donate 打赏插件
- Github Buttons - 添加项目在 Github 上的 star、fork、watch 信息
- Advanced Emoji - 支持 emoji 表情
- Favicon - 更改网站的 favicon.ico
- Sitemap-general - 生成sitemap


### 统计

- ga Google统计
- 3ba 百度统计

### 评论插件

插件地址: <https://plugins.gitbook.com/plugin/disqus>

```json
"plugins": [
    "disqus"
],
"pluginsConfig": {
    "disqus": {
        "shortName": "gitbook-tutorial"
    }
}
```

### 代码高亮

使用 Prism.js 为语法添加高亮显示，需要将 highlight 插件去掉。

地址： <https://plugins.gitbook.com/plugin/prism> <https://plugins.gitbook.com/plugin/prism-themes>

```json
{
    "plugins": [
        "prism",
        "-highlight"
    ],
    "pluginsConfig": {
        "prism": {
            "css": [
                "prism-themes/themes/prism-base16-ateliersulphurpool.light.css"
            ]
        }
    }
}
```

如果需要修改背景色、字体大小等，可以在 website.css 定义 pre[class*="language-"] 类来修改，下面是一个示例：

```css
pre[class*="language-"] {
    border: none;
    background-color: #f7f7f7;
    font-size: 1em;
    line-height: 1.2em;
}
```

### 数学插件 & Tex

#### MathJax 和 KaTeX 的区别

`mathjax` 和 `katex` 插件是 Tex 公式绘制的不同实现，它们基于各自的开源库：[KaTeX](https://www.mathjax.org/) 和 [MathJax](https://www.mathjax.org/) 。

MathJax 支持整个 Tex 语法，但是在制作电子书版本时不是很完美。 KaTex 在所有格式（网页和电子书）的绘制上都很完美，但是还不支持 所有的语法。

### 更多其他插件选择

* <https://www.cnblogs.com/mingyue5826/p/10307051.html>
* <https://www.jianshu.com/p/53fccf623f1c>
* <https://www.jianshu.com/p/427b8bb066e6>

### book.json配置（直接用本书配置来说明） {#bookjson}

```
{
  "title": "hqbook", // 书本标题
  "author": "Haoqiang Chen", // 作者
  "description": "平时零散编程笔记收录手册，以便日后查阅。", // 描述
  "keywords": "编程,markdown,笔记", // 关键字
  "introduction": {
    "path": "README.md",
    "title": "hqbook"
  },
  "links": { // 在左侧导航栏添加链接信息
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
  "plugins": [ // 配置使用的插件
    "chapter-fold", // 左侧目录折叠
    "splitter", // 侧边栏宽度可调节
    "anchors", // 标题带有 github 样式的锚点
    "-lunr",
    "-search", // 其中"-search"中的 - 符号代表去除默认自带的插件
    "search-pro", // 高级搜索（支持中文）
    "flexible-alerts", // 将块引用转换为漂亮的警报
    "advanced-emoji", // emoij表情
    "hide-element", // 可以隐藏不想看到的元素，比如导航栏中Published by GitBook
    "sitemap" // 生成站点地图
  ],
  "pluginsConfig": { // 配置插件的属性
    "chapter-fold": {},
    "fontSettings": {
      "theme": "white",
      "family": "serif",
      "size": 2
    },
    "flexible-alerts": {
      "style": "callout",
      "comment": {
        "label": "Comment",
        "icon": "fa fa-comments",
        "className": "info"
      }
    },
    "hide-element": {
      "elements": [
        ".gitbook-link"
      ]
    },
    "sitemap": {
      "hostname": "https://chq.github.io/"
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

