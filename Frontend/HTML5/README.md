# HTML超文本标记语言
WWW 是“World Wide Web”（全球广域网）的缩写，简称为Web，中文又称为“万维网”。

HTML（Hypertext Markup Language，超文本标记语言）是一种文本类、解释执行的标记语言，
用于编写要通过WWW显示的超文本文件，称为HTML文件，也叫Web页面或网页。扩展名为.html或.htm 。

HTML文件的组成包含两部分内容：一是HTML标记；二是HTML标记所设置的内容。

## HTML基础

1. 文档类型：规范的`HTML/XHTML`文档需要以`<!DOCTYPE>`标记声明开始的。用于指定`DTD`(说明当前这个html版本)
 
2. HTML文件的基本结构: 头部(`head`)，标题(`title`)，页面主体(`body`)

3. HTML标记: html文件的开始和结束标签：`<html></html>`

> html中标签的大致写法：

* 由开始标签和结束标签组成,空标签写法为：`<标签名/>`,双标签`<标签名></标签名>`
* 标签名不区分大小写，但在`XHTML`中必须小写
* 标签具有属性，属性用来表示标签的性质和特征，属性在一开始的标签中指定，如下图：

![html标签](../../images/html5/html-tag.png)

## 页面的头部标记

### HTML头部标记

* `<title>`: 设定显示在浏览器标题栏中的内容
* `<meta>`: 定义网页的字符集、关键字、描述信息等内容
* `<style>`: 设置CSS层叠样式表的内容
* `<link>`: 对外部文件的链接
* `<script>`: 设置页面脚本或链接外部脚本文件

### 元信息标记`<meta>`

1. 定义文件编码
```html
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
```
2. 搜索引擎优化-关键字
```html
<meta name="keywords" content="关键字1，关键字2，…" />
```
3. 搜索引擎优化-描述
```html
<meta name="description" content="内容介绍" />
```
4. 设置页面刷新或者跳转
```html
<!--设置页面每隔3s刷新一次-->
<meta http-equiv="refresh" content="3">
<!--在当前页面停留3s后，自动跳转到新浪网站首页-->
<meta http-equiv="refresh" content="3;url=http://www.sina.com.cn">
```

### 网页标题栏图标

```html
<!--在网页标题栏左侧显示-->
<link rel="icon" href="图标地址" type="image/x-icon">
<!--也可以在收藏夹显示图标-->
<link rel="shortcut icon" href="图标地址" type="image/x-icon">
```

## 页面的主题标记`<body>`

1. 一个网站的三大元素: 图片，超链接，文字

2. 添加网页背景图片

默认情况下，背景图片会随着页面的滚动而滚动，设置`<body>`标记的`bgproperties="fixed"`,可以使背景图片固定不动。

```html
<body background="images/***.jpg" bgproperties="fixed">
```

3\. 设置网页链接文字颜色

`link`属性设置未访问链接文字颜色；`alink`属性设置正在访问链接文字颜色；`vlink`属性设置访问过后的链接文字颜色

```html
<body link="颜色值" alink="颜色值" vlink="颜色值">
```

4\. 设置网页边距

设置网页与浏览器边框的间距
```html
<body leftmargin="边距值" rightmargin="边距值" topmargin="边距值" bottommargin="边距值">
```

### HTML的注意事项和建议

* 凡是标签都应该闭合！
* 凡是标签都应该小写！
* 文件编码跟设置的编码保持一致！
* 标签属性加引号(英文输入法下的引号)
* `HTML`缩进统一使用`tab`键

## 文字与段落标记

1. 标题字 `h1~h6`

h1的字最大，递减至 h6 最小
```html
<h2 align="对齐方式">标题字</h2>
```

2\. 空格

在HTML里面，浏览器不能解析源代码中使用的`Enter`键，所有的空格，换行符，水平制表符等等。无论你打再多个，都会视为一个空格。

3\. 字体标签`<font>`
```html
<font face="字体名称" size="字号" color="颜色值">文字内容</font>
```

属性 | 说明
 :-: | :-:
color | 颜色,默认黑色
size | 默认字号为3号字。取值范围1~7，可+1到+7，-1到-7(正负取值相对于页面默认字号)，超出取值范围，与取值范围的最近的值效果相同。
face | 默认宋体[黑体,微软雅黑...]

4\. 字体格式化标签

 标签 | 意义 | 标签 | 意义
 :-: | :-: | :-: | :-:
 `<i></i>` | italic,斜体 | `<em></em>` | 斜体
 `<b></b>` | blod,加粗 | `<strong></strong>` | 粗体
 `<big></big>` | 大字号 | `<small></small>` | 小字号
 `<u></u>` | underline,下划线 | `<s></s>` | 删除线
 `<strike></strike>` | 删除线 | `<del></del>` | 删除线
 `<q></q>` | 引用"" | `<dfn></dfn>` | 举例
 `<mark></mark>` | 高亮 | `<sup></sup>` | 上标字
 `<sub></sub>` | 下标字 | `<ruby></ruby>` | 注释
 `<rt></rt>` | 注释 | `<rp></rp>` | 注释
 
举例：
```html
<ruby>OJ<rp>(<rt>Orange Juice<rp>)</ruby>
```

<ruby>OJ<rp>(<rt>Orange Juice<rp>)</ruby>

```html
(x+y)<sup>2</sup> = x<sup>2</sup> + y<sup>2</sup> + 2xy
```

(x+y)<sup>2</sup> = x<sup>2</sup> + y<sup>2</sup> + 2xy

5\. 注释语句

__语法：__ `<!-- 注释内容 -->`

为了提高代码的维护性和可读性，常常在源代码中添加注释语句，用于对代码进行说明。注释语句并不显示在浏览器中。

6\. 实体字符

* 空格：`&emsp;` 这个兼容性比较好; `&nbsp;` 有些浏览器不能使用
* & `&amp;`
* 版权 `&copy;`
* 商标 `&reg;`

![html特殊符号对照表](../../images/html5/symbol-table.jpg)

7\. 段落标记

* 段落标签 `<p>` 全称: `paragraph`

语法说明：在HTML中即可使用单标记也可使用双标记,但XHTML只能用双标记。  
区别是`双标记`会与上下文同时产生一空行的间隔,而`单标记`只与上文产生一空行间隔

* 换行标签 `<br />`
* 居中标记 `<center></center>`
* 缩排标记 `<blockquote></blockquote>`
* 预格式化标记 `<pre></pre>`
* 水平线标签 `<hr align="center" width="50%" size="2" noshade />` noshade 实心的不带阴影的效果

## 超链接a标签

> 属性

属性 | 描述
 :-: | :-:
href | 规定链接指向的页面的 URL。
title | 指定元素的提示文本。
name | 规定锚的名称。
download | 规定被下载的超链接目标。
target | 规定在何处打开链接文档。

__`<a>` 标签的 `target` 属性__

属性值 | 描述
 :-: | :-:
_seft | 默认。在相同的框架中打开被链接文档。
_blank | 在新窗口中打开被链接文档。
_parent | 在上一级窗口中打开，一般在框架页面中经常使用。
_top | 在浏览器的整个窗口中打开，忽略任何框架。
framename | 在指定的框架窗口中打开链接文档。

> 链接类型

1. 引用外部链接: `<a href="http://www.baidu.com">超级链接</a>`

2. 引用内部链接: `<a href="同一网站内部网页名称">内部链接是指在同一个网站内部，不同网页之间的链接关系</a>`

3. 锚点，也叫书签链接。锚点需要满足两个条件。锚点名，锚链接

```html
<a name="top"></a><!--锚点名-->
<!-- 一大段内容 -->
<a href="#top">点击跳转到顶部</a>
<!--这个是内部书签链接即链接到同一页面的书签，若要外部则为<a href="地址#书签名">...</a>-->
```

4\. 图片链接 `<a href="图片链接目标"><img src="图片文件路径"></a>`

5\. foxmail发邮箱的软件,发送邮箱,比较少用 `<a href="mailto:chenha0qiang@163.com">联系我们</a>`
<!-- 注意文件的路径必须是英文 ,且使用反斜杠因为linux系统无法识别'\'-->

6\. skype手机调试，在移动端很有用。
```html
<a href="tel:159157*****">拨打</a>
<a href="sms:159157*****">发短信</a>
```

7\. 脚本链接 `<a href="javascript:alert('您好，欢迎访问我的站点！')">欢迎访问</a>`

8\. 下载链接：当`<a>`连接的`href`加载的是浏览器无法打开的文件，比如`zip,rar`。是会提供下载的  
`<a href="01.zip">下载</a>`

> 链接路径

* 在当前目录下，直接写文件名 (默认 ./  当前目录)  
`<a href="readme.txt">本地文件</a>`
* 当文件在当前目录的某个(dir)文件夹下，这么来写  
`<a href="dir/readme.txt">本地文件</a>`
* 当文件在当前目录的上一级，这么来写 (使用 ../ 返回上一层)  
`<a href="../readme.txt">本地文件</a>`
* 绝对路径  
`<a href="E:/image/img2.png">用绝对路径打开图片</a>`

## 图片标签`<img>`

> 属性

属性 | 描述
 :-: | :-:
src | 图片的来源，路径。(source)
alt | 图片加载失败的说明文字。建议写图片标签的时候都加上，有利于SEO优化。
width | 宽度(如果只设置一个宽度或高度，那么对应得高度或宽度会等比例放大缩小)
height | 高度(如果只设置一个宽度或高度，那么对应得高度或宽度会等比例放大缩小)
hspace | 设置图片与周围对象的水平间距
vspace | 设置图片与周围对象的垂直间距
title  | 提示信息。
border | 图片的边框。(后面课程中会经常用到)
align  | 设置图片与周围对象的对齐方式(可取值有:top、bottom、middle、left、right)

### 图像热区

概念：图片映射是指源端点为图片热区的超链接。一幅图像被切分成不同的区域，每一个区域可以链接到不同的地址，这些区域称为图像的热区。

__基本语法：__
```html
<img src="URL" usemap="#map 名称">
<map name="map 名称">
    <area shape="rect" coords="x1,y1,x2,y2" href="链接地址1" />
    <area shape="circle" coords="x,y,r" href="链接地址2" />
    <area shape="poly" coords="x1,y1,x2,y2,x3,y3,..." href="链接地址3" />
</map>
```
area标签属性 | 描述 | 类型shape属性值 | 描述
 :-: | :-: | :-: | :-:
shape | 类型 | rect | 矩形（2个坐标）
coords | 坐标 | circle | 圆形（1个）
href | 跳转地址 | poly | 多边形（N个）

链接属性href(a标签和area标签中可使用该属性)：当链接到不可解析的文件时会提示下载信息

什么地方用图像热区呢？  
一般如果图片很大，很长，只取某部分，那就使用图像热区。

图像热区超级不好调试的，会以目标图片的左上角为原点，就是占位大小不包括margin，占位大小有占位宽和站位高。  
占位宽=width+border+padding;  
站位高=height+border+padding;  
而这个可以使用photoshop找到坐标，使用到标尺等工具。使用photoshop打开图片->将鼠标放在坐标上->在控制面板查看坐标信息

## 列表和表格

### 有序列表
```html
<ol type="A">
  <li>这里是第1个li</li>
  <li>这里是第2个li</li>
  <li>这里是第3个li</li>
</ol>
```
__ol属性：__
* `type` : 数字(1); 大小写字母(A,a); 大小写罗马数字(I,i)
* `start`: "起始编号位序"表示列表项的开始编号所处的位置序号，即li前面开始的数值 -->  `<ol type="a" start="3">`

### 无序列表
```html
<ul type="square">
  <li>这里是第1个li</li>
  <li>这里是第2个li</li>
  <li>这里是第3个li</li>
</ul>
```
__ul属性：__
* `type` : 实心圆(disc); 空心圆(circle); 实心矩形(square)
该属性顺序是li中继续包含ul后的type默认属性,后面默认为实心矩形

> [!Warning|label: 注意]
> 无论是有序列表还是无序列表，ul和ol能接的标签只能是li，但li中可以添加任意标签

### 定义列表
```html
<dl>
    <dt>html是什么</dt>
    <dd>HyperText Markup Languagehtml
    <br/>
    是一种超文本标记语言
    </dd>
</dl>
```
dd标签相当于其他列表中的li标签，可以在其中添加任意标签，不过建议只放dt和dd标签，一般情况下使用标签+样式实现文本的解析，不使用多个dd或dt标签

__定义列表的应用场景__
1. 做网站尾部的相关信息
2. 做图文混排

### 嵌套列表
```html
<ul> -->无序列表
  <li>
    <ol> -->有序列表
      <li>...</li>          -->无序列表中嵌套了一个有序列表
    </ol>
   
</ul>
```

