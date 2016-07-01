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
    
## 常用的插件

下面列举一些常用的gitbook插件，至于怎么自定义插件，这里就不多说了，感兴趣的可以看这篇[中文文档](http://gitbook.hushuang.me/plugins/create.html)。

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

### 关于本书hqbook的配置说明

