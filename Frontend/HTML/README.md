<!-- @author chenhaoqiang (chenhaoqiang.irxk@gmail.com) -->
<!-- @date    2016-07-01 10:51:36 -->

# HTML超文本标记语言
WWW 是“World Wide Web”（全球广域网）的缩写，简称为Web，中文又称为“万维网”。

HTML（Hypertext Markup Language，超文本标记语言）是一种文本类、解释执行的标记语言，
用于编写要通过WWW显示的超文本文件，称为HTML文件，也叫Web页面或网页。扩展名为.html或.htm 。

HTML文件的组成包含两部分内容：一是HTML标记；二是HTML标记所设置的内容。

## HTML基础 {#base}

1. 文档类型：规范的`HTML/XHTML`文档需要以`<!DOCTYPE>`标记声明开始的。用于指定`DTD`(说明当前这个html版本)
 
2. HTML文件的基本结构: 头部(`head`)，标题(`title`)，页面主体(`body`)

3. HTML标记: html文件的开始和结束标签：`<html></html>`

> html中标签的大致写法：

* 由开始标签和结束标签组成,空标签写法为：`<标签名/>`,双标签`<标签名></标签名>`
* 标签名不区分大小写，但在`XHTML`中必须小写
* 标签具有属性，属性用来表示标签的性质和特征，属性在一开始的标签中指定，如下图：

![html标签](../../images/html/html-tag.png)

## 页面的头部标记 {#head}

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
<meta http-equiv="refresh" content="3;url=https://www.sina.com.cn">
```

### 网页标题栏图标

```html
<!--在网页标题栏左侧显示-->
<!--suppress HtmlUnknownTarget -->
<link rel="icon" href="图标地址" type="image/x-icon">
<!--也可以在收藏夹显示图标-->
<link rel="shortcut icon" href="图标地址" type="image/x-icon">
```

## 页面的主题标记`<body>`

1. 一个网站的三大元素: 图片，超链接，文字

2. 添加网页背景图片

默认情况下，背景图片会随着页面的滚动而滚动，设置`<body>`标记的`bgproperties="fixed"`,可以使背景图片固定不动。

```html
<!--suppress HtmlUnknownTarget -->
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
`color` | 颜色,默认黑色
`size` | 默认字号为3号字。取值范围1~7，可+1到+7，-1到-7(正负取值相对于页面默认字号)，超出取值范围，与取值范围的最近的值效果相同。
`face` | 默认宋体[黑体,微软雅黑...]

4\. 字体格式化标签 {#tagSymbol}

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
实体名称对大小写敏感！

__HTML 中有用的字符实体__

实体字符 | 描述 | 实体名称 | 实体编号 | 实体字符 | 描述 | 实体名称 | 实体编号
:-: | :-: | :-: | :-: | :-: | :-: | :-: | :-:
  | 空格 | `&emsp;` 这个兼容性比较好 | | | 空格 | `&nbsp;` 有些浏览器不能使用 | &amp;#160;
< | 小于号 | `&lt;` | &amp;#60; | > | 大于号 | `&gt;` | &amp;#62;
" | 引号 | `&quot;` | &amp;#34; | ' | 撇号 | `&apos;` (IE不支持) | &amp;#39;
& | 和号 | `&amp;` | &amp;#38; | ¥ | 元 yen | `&yen;` | &amp;#165;
x | 乘号 | `&times;` | &amp;#215; | ÷ | 除号 | `&divide;` | &amp;#247;
© | 版权 | `&copy;` | &amp;#169; | ® | 商标 | `&reg;` | &amp;#174;

__html特殊符号对照表__

![html特殊符号对照表](../../images/html/symbol-table.jpg)

7\. 段落标记

* 段落标签 `<p>` 全称: `paragraph`

语法说明：在HTML中即可使用单标记也可使用双标记,但XHTML只能用双标记。  
区别是`双标记`会与上下文同时产生一空行的间隔,而`单标记`只与上文产生一空行间隔

* 换行标签 `<br />`
* 居中标记 `<center></center>`
* 缩排标记 `<blockquote></blockquote>`
* 预格式化标记 `<pre></pre>`
* 水平线标签 `<hr align="center" width="50%" size="2" noshade />` noshade 实心的不带阴影的效果

## 超链接a标签 {#link}

> 属性

属性 | 描述
 :-: | :-:
`href` | 规定链接指向的页面的 URL。
`title` | 指定元素的提示文本。
`name` | 规定锚的名称。
`download` | 规定被下载的超链接目标。
`target` | 规定在何处打开链接文档。

__`<a>` 标签的 `target` 属性__

属性值 | 描述
 :-: | :-:
`_seft` | 默认。在相同的框架中打开被链接文档。
`_blank` | 在新窗口中打开被链接文档。
`_parent` | 在上一级窗口中打开，一般在框架页面中经常使用。
`_top` | 在浏览器的整个窗口中打开，忽略任何框架。
`framename` | 在指定的框架窗口中打开链接文档。

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

## 图片标签`<img>` {#img}

> 属性

属性 | 描述
 :-: | :-:
`src` | 图片的来源，路径。(source)
`alt` | 图片加载失败的说明文字。建议写图片标签的时候都加上，有利于SEO优化。
`width` | 宽度(如果只设置一个宽度或高度，那么对应得高度或宽度会等比例放大缩小)
`height` | 高度(如果只设置一个宽度或高度，那么对应得高度或宽度会等比例放大缩小)
`hspace` | 设置图片与周围对象的水平间距
`vspace` | 设置图片与周围对象的垂直间距
`title`  | 提示信息。
`border` | 图片的边框。(后面课程中会经常用到)
`align`  | 设置图片与周围对象的对齐方式(可取值有:top、bottom、middle、left、right)

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
`shape` | 类型 | `rect` | 矩形（2个坐标）
`coords` | 坐标 | `circle` | 圆形（1个）
`href` | 跳转地址 | `poly` | 多边形（N个）

链接属性`href`(a标签和area标签中可使用该属性)：当链接到不可解析的文件时会提示下载信息

什么地方用图像热区呢？  
一般如果图片很大，很长，只取某部分，那就使用图像热区。

图像热区超级不好调试的，会以目标图片的左上角为原点，就是占位大小不包括`margin`，占位大小有占位宽和站位高。  
占位宽=`width+border+padding`;  
站位高=`height+border+padding`;  
而这个可以使用`photoshop`找到坐标，使用到标尺等工具。使用`photoshop打开图片->将鼠标放在坐标上->在控制面板查看坐标信息`

## 列表 {#ul}

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

> [!danger]
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
dd标签相当于其他列表中的li标签，可以在其中添加任意标签，不过建议只放dt和dd标签，  
一般情况下使用标签+样式实现文本的解析，不使用多个dd或dt标签

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

## 表格 {#table}

### 表格标签

标签 | 描述 | 标签 | 描述 | 标签 | 描述
 :-: | :-: | :-: | :-: | :-: | :-:
 `<table>` | 定义表格 | `<th>` | 定义表格的表头 | |
 `<caption>` | 定义表格标题 | `<colgroup>` | 定义表格列的组 | `<col>` | 定义用于表格列的属性
 `<thead>` | 定义表格的页眉 | `<tbody>` | 定义表格的主体 | `<tfoot>` | 定义表格的页脚
 `<tr>` | 定义表格的行 | `<td>` | 定义表格单元 | |
 
 ### 表格属性
 
 属性 | 描述 | 属性 | 描述 | 属性 | 描述
 :-: | :-: | :-: | :-: | :-: | :-:
 `width` | 宽 | `height` | 高 | `summary` | 摘要
 `title` | 提示信息 | `bgcolor` | 背景颜色 | `background` | 背景图片
 `align` | 水平方向对齐 | `valign` | 垂直方向对齐 | `cellspacing` | 单元格之间的空白(默认2px)
 `cellpadding` | 内容与单元格的空白 | `colspan` | 表示横向合并单元格 | `rowspan` | 表示纵向合并单元格
 `border` | 规定表格边框的宽度。| `frame` | 规定外侧边框的哪个部分是可见的。| `rules` | 规定内侧边框的哪个部分是可见的。

__对齐属性__
* `align`: 水平方向对齐,值为left,center,right.  适用于table,tr,td
* `valign`: 垂直方向对齐。值为top,middle,bottom. 适用于tr,td
* `cellspacing` :  单元格之间的空白(默认2px)     适用于table
* `cellpadding` :  内容与单元格的空白            适用于table

__bgcolor、background__ 两个属性也适用与表格。(table,tr,td)  
在表格里面给宽度并不能真正的限制死表格的宽度，如果内容超出表格的实质宽高，依然会将表格的单元格甚至整个表格撑开

__summary__ 属性规定表格内容的摘要。`summary` 属性不会对普通浏览器中产生任何视觉变化。屏幕阅读器可以利用该属性。

__frame和rules属性__，可以控制边框的显示。`frame`属性控制着表格最外围的四条边框的可见性，而`rules`则控制着表格内部边框的可见性。  

__frame属性可取的值及含义如下：__

属性值 | 描述 | 属性值 | 描述
 :-: | :-: | :-: | :-:
`above` | 显示上部的外侧边框 | `below` | 显示下部的外侧边框
`lhs` | 显示左边的外侧边框 | `rhs` | 显示右边的外侧边框
`hsides` | 显示上部和下部的外侧边框 | `vsides` | 显示左边和右边的外侧边框
`void` | 默认值，表示不显示表格最外围的边框 | `box` | 在所有四个边上显示外侧边框
`border` | 在所有四个边上显示外侧边框 | | 

__rules 属性可取的值有五个，分别是：__
* `none` - 默认值，无边框
* `rows` - 为行加边框
* `cols` - 为列加边框
* `groups` - 为行组或列组加边框
* `all` - 为所有行列（单元格）加边框

### table的三个基本组成部分：`行`，`列`，`单元格`

1. 表格标题标记：`<caption align="水平对齐方式(左中右)" valign="垂直对齐(上下)"></caption>`
2. 表格可以分成表头、主体和表尾三部分，在HTML语言中分别用`<thead>`、`<tbody>`、`<tfoot>`表示
> [!danger|label: 这里有三个注意点]
> 1. `<thead>`和`<tfoot>`在一张表中都只能有一个，而`<tbody>`可以有多个。
> 2. `<tfoot>`必须出现在`<tbody>`前面，这样浏览器在接收主体数据之前，就能渲染表尾，有利于加快表格的显示速度。这一点对大型表格尤其重要。
> 3. `<thead>`、`<tbody>`和`<tfoot>`里面都必须使用`<tr>`标签。

3\. CSS中的`table-layout`语句：`table { table-layout: fixed/auto/inherit }`
* `auto`表示单元格的大小由内容决定。
* `fixed`表示单元格的大小是固定的，由第一个指定大小的单元格决定；如果所有单元格都没有指定大小，则由第一个单元格的默认大小决定；如果单元格中的内容超出单元格的大小，则用CSS中的overflow命令控制。微软公司声称使用这个命令，表格的显示速度可以加快100倍。
* `inherit`表示从父元素继承table-layout属性的值，任何版本的IE都不支持。

4\. `<tbody>`可以用来对`行`进行分组，而`<colgroup>`则用来对`列`进行分组。 
比如，下面的代码表示前40列为一组，每列的宽度为20像素。`<colgroup span="40" width="20"></colgroup>`  
`span`属性，可以指定`colgroup`标签能够影响到的列数。在`colgroup`标签内部，可以使用`col`标签为这一列组中的每一列指定属性。  
比如，下面的代码表示列组中每一列的段度为为不同宽度：`<colgroup><col width="20"><col width="50"><col width="30"></colgroup>`  
__代码示例：__
```html
<table border="1" width="600" frame="hsides" rules="groups">
    <caption>My Ultimate Table</caption>
    <colgroup span="1" width="200"></colgroup>
    <colgroup span="3" width="400"></colgroup>
    <thead>
        <tr><td>cell 1-1</td><td>cell 1-2</td><td>cell 1-3</td><td>cell 1-4</td></tr>
    </thead>
    <tfoot>
        <tr><td>cell 4-1</td><td>cell 4-2</td><td>cell 4-3</td><td>cell 4-4</td></tr>
    </tfoot>
    <tbody>
        <tr><td>cell 2-1</td><td>cell 2-2</td><td>cell 2-3</td><td>cell 2-4</td></tr>
        <tr><td>cell 3-1</td><td>cell 3-2</td><td>cell 3-3</td><td>cell 3-4</td></tr>
    </tbody>
</table>
```
__显示效果如下：__

![colgroup对列分组](../../images/html/table-colgroup.jpg)

> @[colgroup对列分组]{`../../demo/demo.html?demoname=colgroup`}
> `../../images/home/html.png`

5\. 合并单元格`colspan`和`rowspan`

![合并单元格`colspan`和`rowspan`](../../images/html/merge-cells.png)

__代码示例：__
```html
<table border="1" summary="这个表格给出了一些关于果蝇的统计数据:平均身高和体重，红眼睛的比例(雄性和雌性)。">
　<caption><em>a test table with merged cells</em></caption>
　<tr><th rowspan="2"></th><th colspan="2">average</th>
　<th rowspan="2">red<br>eyes</th></tr>
　<tr><th>height</th><th>weight</th></tr>
　<tr><th>males</th><td>1.9</td><td>0.003</td><td>40%</td></tr>
　<tr><th>females</th><td>1.7</td><td>0.002</td><td>43%</td></tr>
</table>
```
__显示效果如下：__

![合并单元格](../../images/html/table.gif)

> @[合并单元格]{`../../demo/demo.html?demoname=table-merge-cells`}
> `../../images/html/table.gif` "rect"

## 表单 {#form}

### `form`表单标记
```html
<form name="表单名称" method="提交方法" action="处理程序">……</form>
```

#### 表单属性

* `action` 用于指定表单的服务端程序,规定当提交表单时，向何处发送表单数据。action取值为:第一，一个URL（绝对URL/相对URL），一般指向服务器端一个程序，程序接受到表单提交过来的数据（即表单元素值）作相应处理。比如：

当用户提交这个表单时，第一，服务器将执行网址<http://i.blog.sina.com.cn//>上的名为`reg.ashx`的一般处理程序。  
第二，使用`mailto`协议的`URL`地址，这样会将表单内容以电子邮件的形式发送出去。这种情况比较少见的，因为它要求访问者的计算机上安装和正确设置好了邮件发送程序。  
第三，空值，如果`action`为空或不写，表示提交给当前页面。
* `method` 该属性定义浏览器将表单中的数据提交给服务器处理程序的方式。最常用的是`get`和`post`，默认时使用`get`方法。 
 
__get 与 post 有什么区别呢？__  
1. 数据的查询：比如浏览论坛时，`URL`一般包含了分类、页码数、每页记录数等信息。 `get`方式，能一目了然的看到所要查询的信息(条件)。 `post` 因为隐藏掉了这些信息，不方便进行检验查询条件。  
2. 敏感数据的提交(安全性)：对一项记录，进行更改、添加操作时，比如注册用户、更改用户资料等。`get` 方式附加在URL上，会泄露掉敏感的消息。 `post` 方式，能隐藏掉敏感的信息。下面各用个例子说明一下：
 * 用`get`方式点击提交后：`URL`变为：`http://localhost:4778/ashx/login.ashx?login_username=admin&login_pswd=123456`
 * 用`post`方式点击提交后：`URL`变为：`http://localhost:4778/ashx/login.ashx` 可以看到只是`action`指定的`URL`，参数并没有附加在`URL`后面。
3. 大数据文本传递：`get`虽然方便查询，但由于是附加在`URL`上，各浏览器对`URL`也有个长度限制。`IE`:`2048字符`。`Chrome、FF`好像是 `8182字符`。`post`好像没此限制。

* `onsubmit` 用于指定处理表单的脚本函数
* `enctype` 设置`MIME类型`，默认值为`application/x-www-form-urlencoded`。需要上传文件到服务器时，应将该属性设置为`multipart/form-data`

### `input`输入标记
多数表单元素都可使用`input`定义,为了标识每一个数据，我们需要给表单元素添加`name`属性，所以`name`为必设属性，`name="域名称"`

#### `<input>`文本框的主要属性:

* `width` 宽度 `height` 高度
* `name` 名称，在脚本中可作为标识获取数据
* `maxlength` 设置在文本框中最多可输入的字符数
* `max` 规定输入字段的最大值。`min` 规定输入字段的最小值。`max`和`min`属性配合使用，来创建合法值的范围。
* `size` 文本框长度，大约以字节为单位
* `value` 指定文本框的默认值，是在浏览器第一次显示表单或者用户单击重置按钮之后在文本框中显示的值
* `placeholder` 规定帮助用户填写输入字段的提示
* `autofocus` 规定输入字段在页面加载时是否获得焦点
* `readonly` 只读属性，当设置`readonly`属性后，文本框可以获得焦点，但用户不能改变文本框中的`value`
* `disabled` 禁用，当文本框被禁用时，不能获得焦点，当然，用户也不能改变文本框的值。并且在提交表单时，浏览器不会将该文本框的值发送给服务器
* `required` 指示输入字段的值是必需的
* `pattern` 规定输入字段的值的模式或格式，例如 pattern="[0-9]" 表示输入值必须是 0 与 9 之间的数字
* `type` 规定`input`元素的类型，下面详细介绍

#### `type`属性规定`input`元素的类型

1. 文本框`text`: 输入信息以明文显示
```html
用户名: <input type="text" name="user" />
```

2. 密码框`password`: 以"*"或"●"符号回显所输入的字符，从而起到保密的作用
```html
密码: <input type="password" name="pwd" />
```

3. 隐藏域`hidden`: 隐藏域不会被浏览者看到，它主要用于在不同页面传递域中所设定的值
```html
<input type="hidden" name="hid" value="域值">
```

4. 文件域`file`: 文件域可以将本地文件上传到服务器端,文件上传没有默认值,利用这项功能时，在 form 标签中要指定method属性。要把method 指定为post, enctype属性指定为 multipart/form-data。否则无法上传文件内容
```html
<input type="file" name="photo">
```

5. 单选按钮`radio`: 在一组选项中进行单项选择，以一个圆框表示  
    使用方式：要实现单选功能，name值必须相等。使用name相同的一组单选按钮，不同radio设定不同的value值，这样通过取指定name的值就可以知道谁被选中了，不用单独的判断。单选按钮的元素值由value属性显式设置，表单提交时，选中项的value和name被打包发送，不显式设置value。
```html
性别: 男:<input type="radio" name="gender" value="female" checked="checked"> <!-- checked表示此项被默认选中,单复选都适用 -->
      女:<input type="radio" name="gender" value="male"/>  <!-- 像这些用户不能填写的表单元素，我们需要设置一些值给用户进行选择。 -->
```

6. 复选按钮`checkbox`: 在一组选项中进行多项选择，以一个方框表示
```html
爱好: <input type="checkbox" name="hobby[m1]" value="music"/>音乐
      <input type="checkbox" name="hobby[m2]" value="trip"/>旅游
      <input type="checkbox" name="hobby[m3]" value="reading"/>阅读
```

7. 提交按钮`submit`: 用于将表单内容提交到指定服务器处理程序或指定客户端脚本进行处理
```html
<input type="submit" name="按钮名称" value="按钮显示文本">
```

8. 普通按钮`button`: 用于激发提交表单动作，配合JavaScript脚本对表单执行处理操作
```html
<!--suppress JSUnresolvedVariable -->
<input type="button" value="按钮显示文本" onclick="javascript函数名" name="按钮名称">
```

9. 重置按钮`reset`: 用于清楚表单中所输入的内容，将表单内容恢复成默认的状态
```html
<input type="reset" name="按钮名称" value="按钮显示文本">
```

10. 图像按钮`image`: 按钮外形以图像表示，功能与提交按钮一样，具有提交表单内容的作用
```html
<input type="image" name="按钮名称" src="图像路径" width="宽" height="高">
```

### `select`选择列表标记

#### 选择列表
一次可以选择多个列表选项，且一次可以显示1个以上列表选项的选择列表  
select 标记用于声明选择列表，option标记用于设置各个选项
```html
<select name="列表名称" size="显示的选项数目(默认为1)" multiple="multiple"><!-- multiple设置列表中的项目可多选 -->
    <option value="banana" selected="selected">香蕉</option><!-- selected设置默认选项，可设置多个 -->
    <option value="apple">苹果</option>
    <option value="watermelon" selected="selected">西瓜</option>
    <option value="grape" selected="selected">葡萄</option>
</select>
```

#### 下拉列表
一次只能选择一个列表选项，且一次只能显示一个列表选项的选择列表，即size默认1不能设置 size和 multiple属性
```html
<select name="area">
    <optgroup label="国外"> <!-- <optgroup> 标签用于组合选项，即给选项分组类别,属性为label,指定选项组合名称 -->
        <option value="1">华盛顿</option>
        <option value="2">旧金山</option>
    </optgroup>
    <optgroup label="国内">
        <option value="3">广州</option>
        <option value="4">湛江</option>
    </optgroup>
</select>
```

### `textarea`文本域标记
一般用于给用户填写备注信息或留言信息的多行多列文本区域
```html
<textarea name="文本区域名称" rows="行数" cols="字符数">
    ...(此处输入的为默认文本，比如)请在此处输入备注信息
</textarea>
```

### `label`标签：为`input`元素定义标注
`lable`元素不会向用户呈现任何特殊效果。不过，它为鼠标用户改进了可用性。如果您在`label`元素内点击文本，就会触发此控件。就是说，当用户选择该标签时，浏览器就会自动将焦点转到和标签相关的表单控件上。

> [!danger]
> __"for"__属性可把__label__绑定到另外一个元素。请把__"for"__属性的值设置为相关元素的__id__属性的值。即为下面说的隐式的联系。

#### 隐式和显式的联系
标记通常以下面两种方式中的一种来和表单控件相联系：将表单控件作为标记标签的内容，这样的就是隐式形式， 
或者为`<label>`标签下的__for__属性命名一个目标表单__id__，这样就是显式形式。

**显式的联系**
```html
<label for="SSN">Social Security Number:</label>
<input type="text" name="SocSecNum" id="SSN" />
```

**隐式的联系**
```html
<label>Date of Birth: <input type="text" name="DofB" /></label>
```

### `fieldset`标签
把表单中元素组合起来，通俗的讲就是把表单围起来，顺便给个标题注释，看起来更规整。

**基本语法：**`<fieldset> <legend>...</legend> <form>...</form> </fieldset>`

**demo**
```html
<fieldset>
    <legend>我最喜爱的:</legend>
    <label for="computer">计算机</label> <input type="checkbox" value="1" id="fav" name="fav" />
    <label for="trval">旅游</label> <input type="checkbox" value="2" id="fav" name="fav" />
    <label for="buy">购物</label> <input type="checkbox" value="3" id="fav" name="fav" />
</fieldset>
```
**显示效果**

<fieldset>
    <legend>我最喜爱的:</legend>
    <label for="computer">计算机</label> <input type="checkbox" value="1" id="fav" name="fav" />
    <label for="trval">旅游</label> <input type="checkbox" value="2" id="fav" name="fav" />
    <label for="buy">购物</label> <input type="checkbox" value="3" id="fav" name="fav" />
</fieldset>

## 框架 {#frame}

### 框架概述

框架的作用，就是把浏览器窗口划分成若干个小窗口，每个小窗口可以分别显示不同的网页。这样在一个页面中可以同时显示不同网页内容，不同窗口的内容相互独立。框架的主要用途是导航，通常会在一个窗口中显示导航条，另外一个窗口则作为内容窗口，用于显示导航栏目的目标页面内容，窗口的内容会根据导航栏目的不同而动态变化。

html框架集与body同级,因此不能同时出现。框架的基本结构主要分为框架集`<frameset>`和框架`<frame>`两个部分。

**基本语法如下：**
```html
<frameset>
    <frame/> <!-- 一个框架集中可以包括多个框架，每个框架窗口显示的页面由框架的 src 属性指定。 -->
    <frame/>
    ...
</frameset>
```

### 框架集标记`frameset`

定义浏览器窗口的分割方式、各分割窗口（框架）的大小以及设置框架边框的颜色和粗细等属性。**主要属性有：**

属性 | 说明 | 属性 | 说明 | 属性 | 说明
:-: | :-: | :-: | :-: | :-: | :-:
border | 边框宽度，框架粗细 | frameborder | 是否显示边框（取值1, 0或yes，no）| rows | 上下分割窗口
bordercolor | 边框颜色 | framespacing | 边框间距| cols | 左右分割窗口

`<frameset>`标记对浏览器窗口的分割存在不同的方式，主要分为以下几种类型：
* cols左右（水平）分割  `<frameset cols="80,*">`
* rows上下（垂直）分割  `<frameset rows="80,*">`
cols把框架分成左右两半,上下分割使用rows(分成上下两半)。每个框架的大小使用逗号隔开，最后一个使用*会把剩下的都分配给它
* 嵌套分割：左右上下分割都有。`<frameset>`里面再嵌套一个`<frameset>`标记.
```html
<frameset rows="100,*">
    <frame/>
    <frameset cols="20%,*">
    <frame/>
    </frameset>
</frameset>
```
**效果图如下：**

![frameset 嵌套分割](../../images/html/frameset.png)

### 框架标记`frame`

`<frameset>`分割得到的每个子窗口都需要显示不同的页面内容，这些页面内容由`<frame>`标记来设置。  
`<frame>`是个单标记，它必须放在框架集`frameset`中，`<frameset>`分割了几个子窗口就必须对应几个`<frame>`标记。

**基本语法：**
```html
<frame src="01.html" name="test" /> <!-- src 框架的源文件地址，name 框架名(命名框架，以便超链接使用它作为目标窗口) -->
```

**`<frame>`标记的常用属性有：**

属性 | 属性值 | 说明 | 属性 | 属性值 | 说明
:-: | :-: | :-: | :-: | :-: | :-:
scrolling | yes、no、auto | 是否显示滚动条 | noresize | | 禁止改变框架的尺寸大小
border | | 边框宽度，框架粗细 | bordercolor | | 边框颜色
marginwidth | | 设置内容与框架窗口左右边框的距离 | marginheight | | 设置内容与框架窗口上下边框的距离
src | | 显示页面的URL地址 | | |

### 浮动框架标记`iframe`（也有叫“内嵌框架”的）

浮动框架时一种特殊的框架页面，主要体现在这个框架时嵌套在一个HTML页面中，作为页面的一个组成部分。具有和`<frame>`一样的属性，也有自己的属性：
`<iframe src="源文件地址" name="名" width="宽" height="高" align="对齐方式">`

### 不支持框架标记`noframes`

当用户浏览器版本太低不支持框架时，浏览器制作人员无法改变这一现象，所能做的只是告诉用户事实，把显示给用户看的文本信息放在`<body></body>`标记对之间；而`<noframes>`放在`</frameset>`标记后面。如：
```html
<frameset cols="130,*"><frame src="menu.html"/><frame src="introduce.html"/></frameset>
<noframes>
    <body>抱歉，您的浏览器版本太低，不支持框架，无法看到页面内容，请使用较新的浏览器来浏览。</body>
</noframes>
```
当用户浏览器版本太低不支持框架时，浏览器窗口将显示`<body></body>`标记对之间的文本内容，否则将显示`<frameset></frameset>`中各个框架的页面内容。

### 框架与超链接

一般情况下在框架中的a链接使用target属性实现框架内文件跳转时：
* `href` 一直不变，即指向打开的文件路径不需要变
* `_self` 自己框架页面打开
* `_blank` 新页面打开
* `_top` 顶级框架页面打开
* `_parent` 到其父级框架页面打开
* `_framename` 将我们想要打开的页面在指定的框架中打开

**下面用个例子来说明**  
1. 首先，新建一个网页“框架集和框架.html”，为右侧框架窗口添加"name"标识，输入下面的内容：
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>框架集frameset和框架frame</title>
</head>
<body>
    <frameset cols="10%,*">
    <frame src="menu.html" />
    <frame  src="https://qq.com" name="RightFrame" />
    </frameset>
</body>
</html>
```
2. 然后，新建一个网页“menu.html”，在左侧窗口中，设置"target"属性显示的窗口名，输入下面的内容：
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <a href="https://qq.com/"  target="RightFrame">qq</a>
    <a href="https://baidu.com" target="RightFrame">百度</a>
    <a href="https://taobao.com" target="RightFrame">淘宝</a>
</body>
</html>
```
如下图，刚开始打开这个“框架集和框架.html”这个网页时，显示的效果如下：  
左边相当于是一个菜单，右边是显示效果，当你单击“百度”或者“淘宝”时都可以链接到相应网站。

![框架集和框架.html](../../images/html/frame.png)

## HTML颜色 {#color}

HTML 颜色采用的是 RGB 颜色，是通过对红 (R)、绿 (G)、蓝 (B) 三个颜色通道的变化以及它们相互之间的叠加来得到各式各样的颜色的，RGB 即是代表红、绿、蓝三个通道的颜色。

**1600 万种不同颜色**  
三种颜色 红，绿，蓝的组合从 0 到 255，一共有 1600 万种不同颜色 (256 x 256 x 256)。您可以在编程测试中练习使用 RGB 红色表达方式！  
在下面的颜色表中你会看到不同的结果，从 0 到 255 的红色，同时设置绿色和蓝色的值为 0 ，随着红色的值变化，不同的值都显示了不同的颜色。

> Web 安全色?

数年以前，当大多数计算机仅支持 256 种颜色的时候，一系列 216 种 Web 安全色作为 Web 标准被建议使用。其中的原因是，微软和 Mac 操作系统使用了 40 种不同的保留的固定系统颜色（双方大约各使用 20 种）。  
我们不确定如今这么做的意义有多大，因为越来越多的计算机有能力处理数百万种颜色，不过做选择还是你自己。  
最初，216 跨平台 Web 安全色被用来确保：当计算机使用 256 色调色板时，所有的计算机能够正确地显示所有的颜色。

<table border="1" width="100%" style="width: 66%;margin:0 auto;"> <tbody><tr> <td align="center" style="color:#ffffff" bgcolor="#000000">000000</td> <td align="center" style="color:#ffffff" bgcolor="#000033">000033</td> <td align="center" style="color:#ffffff" bgcolor="#000066">000066</td> <td align="center" style="color:#ffffff" bgcolor="#000099">000099</td> <td align="center" style="color:#ffffff" bgcolor="#0000cc">0000CC</td> <td align="center" style="color:#ffffff" bgcolor="#0000ff">0000FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#003300">003300</td> <td align="center" style="color:#ffffff" bgcolor="#003333">003333</td> <td align="center" style="color:#ffffff" bgcolor="#003366">003366</td> <td align="center" style="color:#ffffff" bgcolor="#003399">003399</td> <td align="center" style="color:#ffffff" bgcolor="#0033cc">0033CC</td> <td align="center" style="color:#ffffff" bgcolor="#0033ff">0033FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#006600">006600</td> <td align="center" style="color:#ffffff" bgcolor="#006633">006633</td> <td align="center" style="color:#ffffff" bgcolor="#006666">006666</td> <td align="center" style="color:#ffffff" bgcolor="#006699">006699</td> <td align="center" style="color:#ffffff" bgcolor="#0066cc">0066CC</td> <td align="center" style="color:#ffffff" bgcolor="#0066ff">0066FF</td> </tr> <tr> <td align="center" bgcolor="#009900">009900</td> <td align="center" bgcolor="#009933">009933</td> <td align="center" bgcolor="#009966">009966</td> <td align="center" bgcolor="#009999">009999</td> <td align="center" bgcolor="#0099cc">0099CC</td> <td align="center" bgcolor="#0099ff">0099FF</td> </tr> <tr> <td align="center" bgcolor="#00cc00">00CC00</td> <td align="center" bgcolor="#00cc33">00CC33</td> <td align="center" bgcolor="#00cc66">00CC66</td> <td align="center" bgcolor="#00cc99">00CC99</td> <td align="center" bgcolor="#00cccc">00CCCC</td> <td align="center" bgcolor="#00ccff">00CCFF</td> </tr> <tr> <td align="center" bgcolor="#00ff00">00FF00</td> <td align="center" bgcolor="#00ff33">00FF33</td> <td align="center" bgcolor="#00ff66">00FF66</td> <td align="center" bgcolor="#00ff99">00FF99</td> <td align="center" bgcolor="#00ffcc">00FFCC</td> <td align="center" bgcolor="#00ffff">00FFFF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#330000">330000</td> <td align="center" style="color:#ffffff" bgcolor="#330033">330033</td> <td align="center" style="color:#ffffff" bgcolor="#330066">330066</td> <td align="center" style="color:#ffffff" bgcolor="#330099">330099</td> <td align="center" style="color:#ffffff" bgcolor="#3300cc">3300CC</td> <td align="center" style="color:#ffffff" bgcolor="#3300ff">3300FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#333300">333300</td> <td align="center" style="color:#ffffff" bgcolor="#333333">333333</td> <td align="center" style="color:#ffffff" bgcolor="#333366">333366</td> <td align="center" style="color:#ffffff" bgcolor="#333399">333399</td> <td align="center" style="color:#ffffff" bgcolor="#3333cc">3333CC</td> <td align="center" style="color:#ffffff" bgcolor="#3333ff">3333FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#336600">336600</td> <td align="center" style="color:#ffffff" bgcolor="#336633">336633</td> <td align="center" style="color:#ffffff" bgcolor="#336666">336666</td> <td align="center" style="color:#ffffff" bgcolor="#336699">336699</td> <td align="center" style="color:#ffffff" bgcolor="#3366cc">3366CC</td> <td align="center" style="color:#ffffff" bgcolor="#3366ff">3366FF</td> </tr> <tr> <td align="center" bgcolor="#339900">339900</td> <td align="center" bgcolor="#339933">339933</td> <td align="center" bgcolor="#339966">339966</td> <td align="center" bgcolor="#339999">339999</td> <td align="center" bgcolor="#3399cc">3399CC</td> <td align="center" bgcolor="#3399ff">3399FF</td> </tr> <tr> <td align="center" bgcolor="#33cc00">33CC00</td> <td align="center" bgcolor="#33cc33">33CC33</td> <td align="center" bgcolor="#33cc66">33CC66</td> <td align="center" bgcolor="#33cc99">33CC99</td> <td align="center" bgcolor="#33cccc">33CCCC</td> <td align="center" bgcolor="#33ccff">33CCFF</td> </tr> <tr> <td align="center" bgcolor="#33ff00">33FF00</td> <td align="center" bgcolor="#33ff33">33FF33</td> <td align="center" bgcolor="#33ff66">33FF66</td> <td align="center" bgcolor="#33ff99">33FF99</td> <td align="center" bgcolor="#33ffcc">33FFCC</td> <td align="center" bgcolor="#33ffff">33FFFF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#660000">660000</td> <td align="center" style="color:#ffffff" bgcolor="#660033">660033</td> <td align="center" style="color:#ffffff" bgcolor="#660066">660066</td> <td align="center" style="color:#ffffff" bgcolor="#660099">660099</td> <td align="center" style="color:#ffffff" bgcolor="#6600cc">6600CC</td> <td align="center" style="color:#ffffff" bgcolor="#6600ff">6600FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#663300">663300</td> <td align="center" style="color:#ffffff" bgcolor="#663333">663333</td> <td align="center" style="color:#ffffff" bgcolor="#663366">663366</td> <td align="center" style="color:#ffffff" bgcolor="#663399">663399</td> <td align="center" style="color:#ffffff" bgcolor="#6633cc">6633CC</td> <td align="center" style="color:#ffffff" bgcolor="#6633ff">6633FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#666600">666600</td> <td align="center" style="color:#ffffff" bgcolor="#666633">666633</td> <td align="center" style="color:#ffffff" bgcolor="#666666">666666</td> <td align="center" style="color:#ffffff" bgcolor="#666699">666699</td> <td align="center" style="color:#ffffff" bgcolor="#6666cc">6666CC</td> <td align="center" style="color:#ffffff" bgcolor="#6666ff">6666FF</td> </tr> <tr> <td align="center" bgcolor="#669900">669900</td> <td align="center" bgcolor="#669933">669933</td> <td align="center" bgcolor="#669966">669966</td> <td align="center" bgcolor="#669999">669999</td> <td align="center" bgcolor="#6699cc">6699CC</td> <td align="center" bgcolor="#6699ff">6699FF</td> </tr> <tr> <td align="center" bgcolor="#66cc00">66CC00</td> <td align="center" bgcolor="#66cc33">66CC33</td> <td align="center" bgcolor="#66cc66">66CC66</td> <td align="center" bgcolor="#66cc99">66CC99</td> <td align="center" bgcolor="#66cccc">66CCCC</td> <td align="center" bgcolor="#66ccff">66CCFF</td> </tr> <tr> <td align="center" bgcolor="#66ff00">66FF00</td> <td align="center" bgcolor="#66ff33">66FF33</td> <td align="center" bgcolor="#66ff66">66FF66</td> <td align="center" bgcolor="#66ff99">66FF99</td> <td align="center" bgcolor="#66ffcc">66FFCC</td> <td align="center" bgcolor="#66ffff">66FFFF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#990000">990000</td> <td align="center" style="color:#ffffff" bgcolor="#990033">990033</td> <td align="center" style="color:#ffffff" bgcolor="#990066">990066</td> <td align="center" style="color:#ffffff" bgcolor="#990099">990099</td> <td align="center" style="color:#ffffff" bgcolor="#9900cc">9900CC</td> <td align="center" style="color:#ffffff" bgcolor="#9900ff">9900FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#993300">993300</td> <td align="center" style="color:#ffffff" bgcolor="#993333">993333</td> <td align="center" style="color:#ffffff" bgcolor="#993366">993366</td> <td align="center" style="color:#ffffff" bgcolor="#993399">993399</td> <td align="center" style="color:#ffffff" bgcolor="#9933cc">9933CC</td> <td align="center" style="color:#ffffff" bgcolor="#9933ff">9933FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#996600">996600</td> <td align="center" style="color:#ffffff" bgcolor="#996633">996633</td> <td align="center" style="color:#ffffff" bgcolor="#996666">996666</td> <td align="center" style="color:#ffffff" bgcolor="#996699">996699</td> <td align="center" style="color:#ffffff" bgcolor="#9966cc">9966CC</td> <td align="center" style="color:#ffffff" bgcolor="#9966ff">9966FF</td> </tr> <tr> <td align="center" bgcolor="#999900">999900</td> <td align="center" bgcolor="#999933">999933</td> <td align="center" bgcolor="#999966">999966</td> <td align="center" bgcolor="#999999">999999</td> <td align="center" bgcolor="#9999cc">9999CC</td> <td align="center" bgcolor="#9999ff">9999FF</td> </tr> <tr> <td align="center" bgcolor="#99cc00">99CC00</td> <td align="center" bgcolor="#99cc33">99CC33</td> <td align="center" bgcolor="#99cc66">99CC66</td> <td align="center" bgcolor="#99cc99">99CC99</td> <td align="center" bgcolor="#99cccc">99CCCC</td> <td align="center" bgcolor="#99ccff">99CCFF</td> </tr> <tr> <td align="center" bgcolor="#99ff00">99FF00</td> <td align="center" bgcolor="#99ff33">99FF33</td> <td align="center" bgcolor="#99ff66">99FF66</td> <td align="center" bgcolor="#99ff99">99FF99</td> <td align="center" bgcolor="#99ffcc">99FFCC</td> <td align="center" bgcolor="#99ffff">99FFFF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#cc0000">CC0000</td> <td align="center" style="color:#ffffff" bgcolor="#cc0033">CC0033</td> <td align="center" style="color:#ffffff" bgcolor="#cc0066">CC0066</td> <td align="center" style="color:#ffffff" bgcolor="#cc0099">CC0099</td> <td align="center" style="color:#ffffff" bgcolor="#cc00cc">CC00CC</td> <td align="center" style="color:#ffffff" bgcolor="#cc00ff">CC00FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#cc3300">CC3300</td> <td align="center" style="color:#ffffff" bgcolor="#cc3333">CC3333</td> <td align="center" style="color:#ffffff" bgcolor="#cc3366">CC3366</td> <td align="center" style="color:#ffffff" bgcolor="#cc3399">CC3399</td> <td align="center" style="color:#ffffff" bgcolor="#cc33cc">CC33CC</td> <td align="center" style="color:#ffffff" bgcolor="#cc33ff">CC33FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#cc6600">CC6600</td> <td align="center" style="color:#ffffff" bgcolor="#cc6633">CC6633</td> <td align="center" style="color:#ffffff" bgcolor="#cc6666">CC6666</td> <td align="center" style="color:#ffffff" bgcolor="#cc6699">CC6699</td> <td align="center" style="color:#ffffff" bgcolor="#cc66cc">CC66CC</td> <td align="center" style="color:#ffffff" bgcolor="#cc66ff">CC66FF</td> </tr> <tr> <td align="center" bgcolor="#cc9900">CC9900</td> <td align="center" bgcolor="#cc9933">CC9933</td> <td align="center" bgcolor="#cc9966">CC9966</td> <td align="center" bgcolor="#cc9999">CC9999</td> <td align="center" bgcolor="#cc99cc">CC99CC</td> <td align="center" bgcolor="#cc99ff">CC99FF</td> </tr> <tr> <td align="center" bgcolor="#cccc00">CCCC00</td> <td align="center" bgcolor="#cccc33">CCCC33</td> <td align="center" bgcolor="#cccc66">CCCC66</td> <td align="center" bgcolor="#cccc99">CCCC99</td> <td align="center" bgcolor="#cccccc">CCCCCC</td> <td align="center" bgcolor="#ccccff">CCCCFF</td> </tr> <tr> <td align="center" bgcolor="#ccff00">CCFF00</td> <td align="center" bgcolor="#ccff33">CCFF33</td> <td align="center" bgcolor="#ccff66">CCFF66</td> <td align="center" bgcolor="#ccff99">CCFF99</td> <td align="center" bgcolor="#ccffcc">CCFFCC</td> <td align="center" bgcolor="#ccffff">CCFFFF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#ff0000">FF0000</td> <td align="center" style="color:#ffffff" bgcolor="#ff0033">FF0033</td> <td align="center" style="color:#ffffff" bgcolor="#ff0066">FF0066</td> <td align="center" style="color:#ffffff" bgcolor="#ff0099">FF0099</td> <td align="center" style="color:#ffffff" bgcolor="#ff00cc">FF00CC</td> <td align="center" style="color:#ffffff" bgcolor="#ff00ff">FF00FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#ff3300">FF3300</td> <td align="center" style="color:#ffffff" bgcolor="#ff3333">FF3333</td> <td align="center" style="color:#ffffff" bgcolor="#ff3366">FF3366</td> <td align="center" style="color:#ffffff" bgcolor="#ff3399">FF3399</td> <td align="center" style="color:#ffffff" bgcolor="#ff33cc">FF33CC</td> <td align="center" style="color:#ffffff" bgcolor="#ff33ff">FF33FF</td> </tr> <tr> <td align="center" style="color:#ffffff" bgcolor="#ff6600">FF6600</td> <td align="center" style="color:#ffffff" bgcolor="#ff6633">FF6633</td> <td align="center" style="color:#ffffff" bgcolor="#ff6666">FF6666</td> <td align="center" style="color:#ffffff" bgcolor="#ff6699">FF6699</td> <td align="center" style="color:#ffffff" bgcolor="#ff66cc">FF66CC</td> <td align="center" style="color:#ffffff" bgcolor="#ff66ff">FF66FF</td> </tr> <tr> <td align="center" bgcolor="#ff9900">FF9900</td> <td align="center" bgcolor="#ff9933">FF9933</td> <td align="center" bgcolor="#ff9966">FF9966</td> <td align="center" bgcolor="#ff9999">FF9999</td> <td align="center" bgcolor="#ff99cc">FF99CC</td> <td align="center" bgcolor="#ff99ff">FF99FF</td> </tr> <tr> <td align="center" bgcolor="#ffcc00">FFCC00</td> <td align="center" bgcolor="#ffcc33">FFCC33</td> <td align="center" bgcolor="#ffcc66">FFCC66</td> <td align="center" bgcolor="#ffcc99">FFCC99</td> <td align="center" bgcolor="#ffcccc">FFCCCC</td> <td align="center" bgcolor="#ffccff">FFCCFF</td> </tr> <tr> <td align="center" bgcolor="#ffff00">FFFF00</td> <td align="center" bgcolor="#ffff33">FFFF33</td> <td align="center" bgcolor="#ffff66">FFFF66</td> <td align="center" bgcolor="#ffff99">FFFF99</td> <td align="center" bgcolor="#ffffcc">FFFFCC</td> <td align="center" bgcolor="#ffffff">FFFFFF</td> </tr> </tbody></table>

### HTML 常用颜色代码表

<table cellspacing="0" width="760" border="1" style="width: 66%;margin:0 auto;"><tbody><tr><td width="60" bgcolor="#000000">&nbsp;</td><td width="50">#000000</td><td width="60" bgcolor="#2f0000">&nbsp;</td><td width="50">#2F0000</td><td width="60" bgcolor="#600030">&nbsp;</td><td width="50">#600030</td><td width="60" bgcolor="#460046">&nbsp;</td><td width="50">#460046</td><td width="60" bgcolor="#28004d">&nbsp;</td><td width="50">#28004D</td></tr><tr><td bgcolor="#272727">&nbsp;</td><td>#272727</td><td bgcolor="#4d0000">&nbsp;</td><td>#4D0000</td><td bgcolor="#820041">&nbsp;</td><td>#820041</td><td bgcolor="#5e005e">&nbsp;</td><td>#5E005E</td><td bgcolor="#3a006f">&nbsp;</td><td>#3A006F</td></tr><tr><td bgcolor="#3c3c3c">&nbsp;</td><td>#3C3C3C</td><td bgcolor="#600000">&nbsp;</td><td>#600000</td><td bgcolor="#9f0050">&nbsp;</td><td>#9F0050</td><td bgcolor="#750075">&nbsp;</td><td>#750075</td><td bgcolor="#4b0091">&nbsp;</td><td>#4B0091</td></tr><tr><td bgcolor="#4f4f4f">&nbsp;</td><td>#4F4F4F</td><td bgcolor="#750000">&nbsp;</td><td>#750000</td><td bgcolor="#bf0060">&nbsp;</td><td>#BF0060</td><td bgcolor="#930093">&nbsp;</td><td>#930093</td><td bgcolor="#5b00ae">&nbsp;</td><td>#5B00AE</td></tr><tr><td bgcolor="#5b5b5b">&nbsp;</td><td>#5B5B5B</td><td bgcolor="#930000">&nbsp;</td><td>#930000</td><td bgcolor="#d9006c">&nbsp;</td><td>#D9006C</td><td bgcolor="#ae00ae">&nbsp;</td><td>#AE00AE</td><td bgcolor="#6f00d2">&nbsp;</td><td>#6F00D2</td></tr><tr><td bgcolor="#6c6c6c">&nbsp;</td><td>#6C6C6C</td><td bgcolor="#ae0000">&nbsp;</td><td>#AE0000</td><td bgcolor="#f00078">&nbsp;</td><td>#F00078</td><td bgcolor="#d200d2">&nbsp;</td><td>#D200D2</td><td bgcolor="#8600ff">&nbsp;</td><td>#8600FF</td></tr><tr><td bgcolor="#7b7b7b">&nbsp;</td><td>#7B7B7B</td><td bgcolor="#ce0000">&nbsp;</td><td>#CE0000</td><td bgcolor="#ff0080">&nbsp;</td><td>#FF0080</td><td bgcolor="#e800e8">&nbsp;</td><td>#E800E8</td><td bgcolor="#921aff">&nbsp;</td><td>#921AFF</td></tr><tr><td bgcolor="#8e8e8e">&nbsp;</td><td>#8E8E8E</td><td bgcolor="#ea0000">&nbsp;</td><td>#EA0000</td><td bgcolor="#ff359a">&nbsp;</td><td>#FF359A</td><td bgcolor="#ff00ff">&nbsp;</td><td>#FF00FF</td><td bgcolor="#9f35ff">&nbsp;</td><td>#9F35FF</td></tr><tr><td bgcolor="#9d9d9d">&nbsp;</td><td>#9D9D9D</td><td bgcolor="#ff0000">&nbsp;</td><td>#FF0000</td><td bgcolor="#ff60af">&nbsp;</td><td>#FF60AF</td><td bgcolor="#ff44ff">&nbsp;</td><td>#FF44FF</td><td bgcolor="#b15bff">&nbsp;</td><td>#B15BFF</td></tr><tr><td bgcolor="#adadad">&nbsp;</td><td>#ADADAD</td><td bgcolor="#ff2d2d">&nbsp;</td><td>#FF2D2D</td><td bgcolor="#ff79bc">&nbsp;</td><td>#FF79BC</td><td bgcolor="#ff77ff">&nbsp;</td><td>#FF77FF</td><td bgcolor="#be77ff">&nbsp;</td><td>#BE77FF</td></tr><tr><td bgcolor="#bebebe">&nbsp;</td><td>#BEBEBE</td><td bgcolor="#ff5151">&nbsp;</td><td>#FF5151</td><td bgcolor="#ff95ca">&nbsp;</td><td>#FF95CA</td><td bgcolor="#ff8eff">&nbsp;</td><td>#FF8EFF</td><td bgcolor="#ca8eff">&nbsp;</td><td>#CA8EFF</td></tr><tr><td bgcolor="#d0d0d0">&nbsp;</td><td>#d0d0d0</td><td bgcolor="#ff7575">&nbsp;</td><td>#ff7575</td><td bgcolor="#ffaad5">&nbsp;</td><td>#ffaad5</td><td bgcolor="#ffa6ff">&nbsp;</td><td>#ffa6ff</td><td bgcolor="#d3a4ff">&nbsp;</td><td>#d3a4ff</td></tr><tr><td bgcolor="#e0e0e0">&nbsp;</td><td>#E0E0E0</td><td bgcolor="#ff9797">&nbsp;</td><td>#FF9797</td><td bgcolor="#ffc1e0">&nbsp;</td><td>#FFC1E0</td><td bgcolor="#ffbfff">&nbsp;</td><td>#FFBFFF</td><td bgcolor="#dcb5ff">&nbsp;</td><td>#DCB5FF</td></tr><tr><td bgcolor="#f0f0f0">&nbsp;</td><td>#F0F0F0</td><td bgcolor="#ffb5b5">&nbsp;</td><td>#FFB5B5</td><td bgcolor="#ffd9ec">&nbsp;</td><td>#FFD9EC</td><td bgcolor="#ffd0ff">&nbsp;</td><td>#FFD0FF</td><td bgcolor="#e6caff">&nbsp;</td><td>#E6CAFF</td></tr><tr><td bgcolor="#fcfcfc">&nbsp;</td><td>#FCFCFC</td><td bgcolor="#ffd2d2">&nbsp;</td><td>#FFD2D2</td><td bgcolor="#ffecf5">&nbsp;</td><td>#FFECF5</td><td bgcolor="#ffe6ff">&nbsp;</td><td>#FFE6FF</td><td bgcolor="#f1e1ff">&nbsp;</td><td>#F1E1FF</td></tr><tr><td bgcolor="#ffffff">&nbsp;</td><td>#FFFFFF</td><td bgcolor="#ffecec">&nbsp;</td><td>#FFECEC</td><td bgcolor="#fff7fb">&nbsp;</td><td>#FFF7FB</td><td bgcolor="#fff7ff">&nbsp;</td><td>#FFF7FF</td><td bgcolor="#faf4ff">&nbsp;</td><td>#FAF4FF</td></tr><tr><td bgcolor="#000079">&nbsp;</td><td>#000079</td><td bgcolor="#000079">&nbsp;</td><td>#000079</td><td bgcolor="#003e3e">&nbsp;</td><td>#003E3E</td><td bgcolor="#006030">&nbsp;</td><td>#006030</td><td bgcolor="#006000">&nbsp;</td><td>#006000</td></tr><tr><td bgcolor="#000093">&nbsp;</td><td>#000093</td><td bgcolor="#003d79">&nbsp;</td><td>#003D79</td><td bgcolor="#005757">&nbsp;</td><td>#005757</td><td bgcolor="#01814a">&nbsp;</td><td>#01814A</td><td bgcolor="#007500">&nbsp;</td><td>#007500</td></tr><tr><td bgcolor="#0000c6">&nbsp;</td><td>#0000C6</td><td bgcolor="#004b97">&nbsp;</td><td>#004B97</td><td bgcolor="#007979">&nbsp;</td><td>#007979</td><td bgcolor="#019858">&nbsp;</td><td>#019858</td><td bgcolor="#009100">&nbsp;</td><td>#009100</td></tr><tr><td bgcolor="#0000c6">&nbsp;</td><td>#0000C6</td><td bgcolor="#005ab5">&nbsp;</td><td>#005AB5</td><td bgcolor="#009393">&nbsp;</td><td>#009393</td><td bgcolor="#01b468">&nbsp;</td><td>#01B468</td><td bgcolor="#00a600">&nbsp;</td><td>#00A600</td></tr><tr><td bgcolor="#0000e3">&nbsp;</td><td>#0000E3</td><td bgcolor="#0066cc">&nbsp;</td><td>#0066CC</td><td bgcolor="#00aeae">&nbsp;</td><td>#00AEAE</td><td bgcolor="#02c874">&nbsp;</td><td>#02C874</td><td bgcolor="#00bb00">&nbsp;</td><td>#00BB00</td></tr><tr><td bgcolor="#2828ff">&nbsp;</td><td>#2828FF</td><td bgcolor="#0072e3">&nbsp;</td><td>#0072E3</td><td bgcolor="#00caca">&nbsp;</td><td>#00CACA</td><td bgcolor="#02df82">&nbsp;</td><td>#02DF82</td><td bgcolor="#00db00">&nbsp;</td><td>#00DB00</td></tr><tr><td bgcolor="#4a4aff">&nbsp;</td><td>#4A4AFF</td><td bgcolor="#0080ff">&nbsp;</td><td>#0080FF</td><td bgcolor="#00e3e3">&nbsp;</td><td>#00E3E3</td><td bgcolor="#02f78e">&nbsp;</td><td>#02F78E</td><td bgcolor="#00ec00">&nbsp;</td><td>#00EC00</td></tr><tr><td bgcolor="#6a6aff">&nbsp;</td><td>#6A6AFF</td><td bgcolor="#2894ff">&nbsp;</td><td>#2894FF</td><td bgcolor="#00ffff">&nbsp;</td><td>#00FFFF</td><td bgcolor="#1afd9c">&nbsp;</td><td>#1AFD9C</td><td bgcolor="#28ff28">&nbsp;</td><td>#28FF28</td></tr><tr><td bgcolor="#7d7dff">&nbsp;</td><td>#7D7DFF</td><td bgcolor="#46a3ff">&nbsp;</td><td>#46A3FF</td><td bgcolor="#4dffff">&nbsp;</td><td>#4DFFFF</td><td bgcolor="#4efeb3">&nbsp;</td><td>#4EFEB3</td><td bgcolor="#53ff53">&nbsp;</td><td>#53FF53</td></tr><tr><td bgcolor="#9393ff">&nbsp;</td><td>#9393FF</td><td bgcolor="#66b3ff">&nbsp;</td><td>#66B3FF</td><td bgcolor="#80ffff">&nbsp;</td><td>#80FFFF</td><td bgcolor="#7afec6">&nbsp;</td><td>#7AFEC6</td><td bgcolor="#79ff79">&nbsp;</td><td>#79FF79</td></tr><tr><td bgcolor="#aaaaff">&nbsp;</td><td>#AAAAFF</td><td bgcolor="#84c1ff">&nbsp;</td><td>#84C1FF</td><td bgcolor="#a6ffff">&nbsp;</td><td>#A6FFFF</td><td bgcolor="#96fed1">&nbsp;</td><td>#96FED1</td><td bgcolor="#93ff93">&nbsp;</td><td>#93FF93</td></tr><tr><td bgcolor="#b9b9ff">&nbsp;</td><td>#B9B9FF</td><td bgcolor="#97cbff">&nbsp;</td><td>#97CBFF</td><td bgcolor="#bbffff">&nbsp;</td><td>#BBFFFF</td><td bgcolor="#adfedc">&nbsp;</td><td>#ADFEDC</td><td bgcolor="#a6ffa6">&nbsp;</td><td>#A6FFA6</td></tr><tr><td bgcolor="#ceceff">&nbsp;</td><td>#CECEFF</td><td bgcolor="#acd6ff">&nbsp;</td><td>#ACD6FF</td><td bgcolor="#caffff">&nbsp;</td><td>#CAFFFF</td><td bgcolor="#c1ffe4">&nbsp;</td><td>#C1FFE4</td><td bgcolor="#bbffbb">&nbsp;</td><td>#BBFFBB</td></tr><tr><td bgcolor="#ddddff">&nbsp;</td><td>#DDDDFF</td><td bgcolor="#c4e1ff">&nbsp;</td><td>#C4E1FF</td><td bgcolor="#d9ffff">&nbsp;</td><td>#D9FFFF</td><td bgcolor="#d7ffee">&nbsp;</td><td>#D7FFEE</td><td bgcolor="#ceffce">&nbsp;</td><td>#CEFFCE</td></tr><tr><td bgcolor="#ececff">&nbsp;</td><td>#ECECFF</td><td bgcolor="#d2e9ff">&nbsp;</td><td>#D2E9FF</td><td bgcolor="#ecffff">&nbsp;</td><td>#ECFFFF</td><td bgcolor="#e8fff5">&nbsp;</td><td>#E8FFF5</td><td bgcolor="#dfffdf">&nbsp;</td><td>#DFFFDF</td></tr><tr><td bgcolor="#fbfbff">&nbsp;</td><td>#FBFBFF</td><td bgcolor="#ecf5ff">&nbsp;</td><td>#ECF5FF</td><td bgcolor="#fdffff">&nbsp;</td><td>#FDFFFF</td><td bgcolor="#fbfffd">&nbsp;</td><td>#FBFFFD</td><td bgcolor="#f0fff0">&nbsp;</td><td>#F0FFF0</td></tr><tr><td bgcolor="#467500">&nbsp;</td><td>#467500</td><td bgcolor="#424200">&nbsp;</td><td>#424200</td><td bgcolor="#5b4b00">&nbsp;</td><td>#5B4B00</td><td bgcolor="#844200">&nbsp;</td><td>#844200</td><td bgcolor="#642100">&nbsp;</td><td>#642100</td></tr><tr><td bgcolor="#548c00">&nbsp;</td><td>#548C00</td><td bgcolor="#5b5b00">&nbsp;</td><td>#5B5B00</td><td bgcolor="#796400">&nbsp;</td><td>#796400</td><td bgcolor="#9f5000">&nbsp;</td><td>#9F5000</td><td bgcolor="#842b00">&nbsp;</td><td>#842B00</td></tr><tr><td bgcolor="#64a600">&nbsp;</td><td>#64A600</td><td bgcolor="#737300">&nbsp;</td><td>#737300</td><td bgcolor="#977c00">&nbsp;</td><td>#977C00</td><td bgcolor="#bb5e00">&nbsp;</td><td>#BB5E00</td><td bgcolor="#a23400">&nbsp;</td><td>#A23400</td></tr><tr><td bgcolor="#73bf00">&nbsp;</td><td>#73BF00</td><td bgcolor="#8c8c00">&nbsp;</td><td>#8C8C00</td><td bgcolor="#ae8f00">&nbsp;</td><td>#AE8F00</td><td bgcolor="#d26900">&nbsp;</td><td>#D26900</td><td bgcolor="#bb3d00">&nbsp;</td><td>#BB3D00</td></tr><tr><td bgcolor="#82d900">&nbsp;</td><td>#82D900</td><td bgcolor="#a6a600">&nbsp;</td><td>#A6A600</td><td bgcolor="#c6a300">&nbsp;</td><td>#C6A300</td><td bgcolor="#ea7500">&nbsp;</td><td>#EA7500</td><td bgcolor="#d94600">&nbsp;</td><td>#D94600</td></tr><tr><td bgcolor="#8cea00">&nbsp;</td><td>#8CEA00</td><td bgcolor="#c4c400">&nbsp;</td><td>#C4C400</td><td bgcolor="#d9b300">&nbsp;</td><td>#D9B300</td><td bgcolor="#ff8000">&nbsp;</td><td>#FF8000</td><td bgcolor="#f75000">&nbsp;</td><td>#F75000</td></tr><tr><td bgcolor="#9aff02">&nbsp;</td><td>#9AFF02</td><td bgcolor="#e1e100">&nbsp;</td><td>#E1E100</td><td bgcolor="#eac100">&nbsp;</td><td>#EAC100</td><td bgcolor="#ff9224">&nbsp;</td><td>#FF9224</td><td bgcolor="#ff5809">&nbsp;</td><td>#FF5809</td></tr><tr><td bgcolor="#a8ff24">&nbsp;</td><td>#A8FF24</td><td bgcolor="#f9f900">&nbsp;</td><td>#F9F900</td><td bgcolor="#ffd306">&nbsp;</td><td>#FFD306</td><td bgcolor="#ffa042">&nbsp;</td><td>#FFA042</td><td bgcolor="#ff8040">&nbsp;</td><td>#FF8040</td></tr><tr><td bgcolor="#b7ff4a">&nbsp;</td><td>#B7FF4A</td><td bgcolor="#ffff37">&nbsp;</td><td>#FFFF37</td><td bgcolor="#ffdc35">&nbsp;</td><td>#FFDC35</td><td bgcolor="#ffaf60">&nbsp;</td><td>#FFAF60</td><td bgcolor="#ff8f59">&nbsp;</td><td>#FF8F59</td></tr><tr><td bgcolor="#c2ff68">&nbsp;</td><td>#C2FF68</td><td bgcolor="#ffff6f">&nbsp;</td><td>#FFFF6F</td><td bgcolor="#ffe153">&nbsp;</td><td>#FFE153</td><td bgcolor="#ffbb77">&nbsp;</td><td>#FFBB77</td><td bgcolor="#ff9d6f">&nbsp;</td><td>#FF9D6F</td></tr><tr><td bgcolor="#ccff80">&nbsp;</td><td>#CCFF80</td><td bgcolor="#ffff93">&nbsp;</td><td>#FFFF93</td><td bgcolor="#ffe66f">&nbsp;</td><td>#FFE66F</td><td bgcolor="#ffc78e">&nbsp;</td><td>#FFC78E</td><td bgcolor="#ffad86">&nbsp;</td><td>#FFAD86</td></tr><tr><td bgcolor="#d3ff93">&nbsp;</td><td>#D3FF93</td><td bgcolor="#ffffaa">&nbsp;</td><td>#FFFFAA</td><td bgcolor="#ffed97">&nbsp;</td><td>#FFED97</td><td bgcolor="#ffd1a4">&nbsp;</td><td>#FFD1A4</td><td bgcolor="#ffbd9d">&nbsp;</td><td>#FFBD9D</td></tr><tr><td bgcolor="#deffac">&nbsp;</td><td>#DEFFAC</td><td bgcolor="#ffffb9">&nbsp;</td><td>#FFFFB9</td><td bgcolor="#fff0ac">&nbsp;</td><td>#FFF0AC</td><td bgcolor="#ffdcb9">&nbsp;</td><td>#FFDCB9</td><td bgcolor="#ffcbb3">&nbsp;</td><td>#FFCBB3</td></tr><tr><td bgcolor="#e8ffc4">&nbsp;</td><td>#E8FFC4</td><td bgcolor="#ffffce">&nbsp;</td><td>#FFFFCE</td><td bgcolor="#fff4c1">&nbsp;</td><td>#FFF4C1</td><td bgcolor="#ffe4ca">&nbsp;</td><td>#FFE4CA</td><td bgcolor="#ffdac8">&nbsp;</td><td>#FFDAC8</td></tr><tr><td bgcolor="#efffd7">&nbsp;</td><td>#EFFFD7</td><td bgcolor="#ffffdf">&nbsp;</td><td>#FFFFDF</td><td bgcolor="#fff8d7">&nbsp;</td><td>#FFF8D7</td><td bgcolor="#ffeedd">&nbsp;</td><td>#FFEEDD</td><td bgcolor="#ffe6d9">&nbsp;</td><td>#FFE6D9</td></tr><tr><td bgcolor="#f5ffe8">&nbsp;</td><td>#F5FFE8</td><td bgcolor="#fffff4">&nbsp;</td><td>#FFFFF4</td><td bgcolor="#fffcec">&nbsp;</td><td>#FFFCEC</td><td bgcolor="#fffaf4">&nbsp;</td><td>#FFFAF4</td><td bgcolor="#fff3ee">&nbsp;</td><td>#FFF3EE</td></tr><tr><td bgcolor="#613030">&nbsp;</td><td>#613030</td><td bgcolor="#616130">&nbsp;</td><td>#616130</td><td bgcolor="#336666">&nbsp;</td><td>#336666</td><td bgcolor="#484891">&nbsp;</td><td>#484891</td><td bgcolor="#6c3365">&nbsp;</td><td>#6C3365</td></tr><tr><td bgcolor="#743a3a">&nbsp;</td><td>#743A3A</td><td bgcolor="#707038">&nbsp;</td><td>#707038</td><td bgcolor="#3d7878">&nbsp;</td><td>#3D7878</td><td bgcolor="#5151a2">&nbsp;</td><td>#5151A2</td><td bgcolor="#7e3d76">&nbsp;</td><td>#7E3D76</td></tr><tr><td bgcolor="#804040">&nbsp;</td><td>#804040</td><td bgcolor="#808040">&nbsp;</td><td>#808040</td><td bgcolor="#408080">&nbsp;</td><td>#408080</td><td bgcolor="#5a5aad">&nbsp;</td><td>#5A5AAD</td><td bgcolor="#8f4586">&nbsp;</td><td>#8F4586</td></tr><tr><td bgcolor="#984b4b">&nbsp;</td><td>#984B4B</td><td bgcolor="#949449">&nbsp;</td><td>#949449</td><td bgcolor="#4f9d9d">&nbsp;</td><td>#4F9D9D</td><td bgcolor="#7373b9">&nbsp;</td><td>#7373B9</td><td bgcolor="#9f4d95">&nbsp;</td><td>#9F4D95</td></tr><tr><td bgcolor="#ad5a5a">&nbsp;</td><td>#AD5A5A</td><td bgcolor="#a5a552">&nbsp;</td><td>#A5A552</td><td bgcolor="#5cadad">&nbsp;</td><td>#5CADAD</td><td bgcolor="#8080c0">&nbsp;</td><td>#8080C0</td><td bgcolor="#ae57a4">&nbsp;</td><td>#AE57A4</td></tr><tr><td bgcolor="#b87070">&nbsp;</td><td>#B87070</td><td bgcolor="#afaf61">&nbsp;</td><td>#AFAF61</td><td bgcolor="#6fb7b7">&nbsp;</td><td>#6FB7B7</td><td bgcolor="#9999cc">&nbsp;</td><td>#9999CC</td><td bgcolor="#b766ad">&nbsp;</td><td>#B766AD</td></tr><tr><td bgcolor="#c48888">&nbsp;</td><td>#C48888</td><td bgcolor="#b9b973">&nbsp;</td><td>#B9B973</td><td bgcolor="#81c0c0">&nbsp;</td><td>#81C0C0</td><td bgcolor="#a6a6d2">&nbsp;</td><td>#A6A6D2</td><td bgcolor="#c07ab8">&nbsp;</td><td>#C07AB8</td></tr><tr><td bgcolor="#cf9e9e">&nbsp;</td><td>#CF9E9E</td><td bgcolor="#c2c287">&nbsp;</td><td>#C2C287</td><td bgcolor="#95caca">&nbsp;</td><td>#95CACA</td><td bgcolor="#b8b8dc">&nbsp;</td><td>#B8B8DC</td><td bgcolor="#ca8ec2">&nbsp;</td><td>#CA8EC2</td></tr><tr><td bgcolor="#d9b3b3">&nbsp;</td><td>#D9B3B3</td><td bgcolor="#cdcd9a">&nbsp;</td><td>#CDCD9A</td><td bgcolor="#a3d1d1">&nbsp;</td><td>#A3D1D1</td><td bgcolor="#c7c7e2">&nbsp;</td><td>#C7C7E2</td><td bgcolor="#d2a2cc">&nbsp;</td><td>#D2A2CC</td></tr><tr><td bgcolor="#e1c4c4">&nbsp;</td><td>#E1C4C4</td><td bgcolor="#d6d6ad">&nbsp;</td><td>#D6D6AD</td><td bgcolor="#b3d9d9">&nbsp;</td><td>#B3D9D9</td><td bgcolor="#d8d8eb">&nbsp;</td><td>#D8D8EB</td><td bgcolor="#dab1d5">&nbsp;</td><td>#DAB1D5</td></tr><tr><td bgcolor="#ebd6d6">&nbsp;</td><td>#EBD6D6</td><td bgcolor="#dedebe">&nbsp;</td><td>#DEDEBE</td><td bgcolor="#c4e1e1">&nbsp;</td><td>#C4E1E1</td><td bgcolor="#e6e6f2">&nbsp;</td><td>#E6E6F2</td><td bgcolor="#e2c2de">&nbsp;</td><td>#E2C2DE</td></tr><tr><td bgcolor="#f2e6e6">&nbsp;</td><td>#F2E6E6</td><td bgcolor="#e8e8d0">&nbsp;</td><td>#E8E8D0</td><td bgcolor="#d1e9e9">&nbsp;</td><td>#D1E9E9</td><td bgcolor="#f3f3fa">&nbsp;</td><td>#F3F3FA</td><td bgcolor="#ebd3e8">&nbsp;</td><td>#EBD3E8</td></tr></tbody></table>

## 在网页中嵌入多媒体内容 {#media}

现在在制作网页时，除了可以在网页中放置文本、图片外，还可以在页面中嵌入声音、视频、动画等多媒体内容，使得页面看上去更加丰富多彩、动感十足。

### 设置滚动字幕`marquee`

    属性          属性值                             说明
    ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
    demo：`<marquee direction="up">文字从下往上循环滚动</marquee>`
                  up(从下往上)down(从上往下)
    direction     left(从右往左，默认滚动方向)       设置滚动字幕的滚动方向
    (滚动方向)     right(从左往右)
    ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
    demo：`<marquee behavior="alternate">设置文字循环交替往返进行滚动</marquee>`
    behavior      scroll      设置文字循环往复滚动(默认行为)
    (滚动行为)     slide       设置文字只进行一次滚动
                  alternate   设置文字循环交替往返进行滚动
    ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
    demo：`<marquee scorllamount="滚动速度值" scrolldelay="延迟时间">滚动文字</marquee>`
    scorllamount  设置文字滚动速度，取值为某个数字，越大滚动越快，默认的速度值是6
    scrolldelay   设置文字在每一次滚动后，延迟一段时间后再进行下一次滚动，value以毫秒为单位，值越小越快，默认值是100ms
    ——————————————————————————————————————————————————————————————————————————————————————————————————————————————————
    设置字幕的滚动区域、背景颜色、与周围对象的间距等
    width         设置文字滚动区域的宽度，可以是数字像素或百分比数值%
    height        设置文字滚动区域的宽度，可以是数字像素或百分比数值%
    bgcolor       设置文字滚动区域的背景颜色
    hspace        水平间距
    vspace        垂直间距
    ———————————————————————————————————————————————————————————————————————————————————————————————————————————————————

### 设置背景音乐`bgsound`

```html
<bgsound src="路径/文件名称" loop="循环次数">
<!--loop默认情况下，背景音乐播放一次；如果取值为-1，则表示背景音乐循环不断地播放-->
```

### 嵌入音视频文件`embed`

`<embed src="路径/文件名称"></embed>`

属性 | 说明
:-: | :--
src    | 文件路径
width  | 以像素为单位定义嵌入式对象的宽度
height | 以像素为单位定义嵌入式对象的宽度
loop   | 设置嵌入式对象的播放是否循环不断，取值true时循环不断，否则只播放一次，默认值是false
hidden | 设置多媒体播放软件的可视性，默认值是false

### 嵌入Flash动画`object`

```html
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="500" height="300" id="一个字" >
    <param name="movie" value="一个字.swf">
    <param name="FlashVars" value="prizeResult=3">
    <param name="quality" value="high">
    <param name="menu" value="false">
    <param name="wmode" value="transparent">
    <param name="allowScriptAccess" value="always" />
    <embed src="../../images/html/一个字.swf" FlashVars="prizeResult=3" allowScriptAccess="always" wmode="transparent" menu="false" quality="high" width="500" height="300" type="application/x-shockwave-flash" pluginspage="http://get.adobe.com/cn/flashplayer/" name="一个字"/>
</object>
```
其中 __OBJECT__ 的__classid__和__codebase__的值是必须这么写的，告诉浏览器自动下载__flash player__的地址,OBJECT标签是用于windows平台的IE浏览器的，EMBED是用于windows和Macintosh平台下的Netscape Navigator浏览器以及Macintosh平台下的IE浏览器，就是所谓的非IE浏览器。windows平台的IE利用__Activex控件__来播放flash而其它的浏览器则使用Netscape插件技术来播放__flash__。

**代码效果显示如下：**

<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="500" height="300" id="一个字" >
        <param name="movie" value="一个字.swf">
        <param name="FlashVars" value="prizeResult=3">
        <param name="quality" value="high">
        <param name="menu" value="false">
        <param name="wmode" value="transparent">
        <param name="allowScriptAccess" value="always" />
        <embed src="../../images/html/一个字.swf" FlashVars="prizeResult=3" allowScriptAccess="always" wmode="transparent" menu="false" quality="high" width="500" height="300" type="application/x-shockwave-flash" pluginspage="http://get.adobe.com/cn/flashplayer/" name="一个字"/>
</object>

> @[object标签：嵌入Flash动画]{`../../demo/demo.html?demoname=object-flash`}
> `../../images/home/html.png`

### 嵌入Java Applet（扩展）

Applet 是用 Java开发的一种小程序，不能独立运行，必须嵌入HTML文件中，并通过支持Java的浏览器来运行。  
**基本语法：** `<applet code="XXX.class" width="区域宽度" height="区域高度"></applet>`  
**语法说明：** `XXX.class`表示所嵌入的`applet`类文件，`width、height`属性用来设置`applet`文件显示区域，单位是像素。
