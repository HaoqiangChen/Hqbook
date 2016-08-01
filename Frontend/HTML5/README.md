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
`color` | 颜色,默认黑色
`size` | 默认字号为3号字。取值范围1~7，可+1到+7，-1到-7(正负取值相对于页面默认字号)，超出取值范围，与取值范围的最近的值效果相同。
`face` | 默认宋体[黑体,微软雅黑...]

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

## 图片标签`<img>`

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

## 列表

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

## 表格

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
> [!Warning|label: 这里有三个注意点]
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

![合并单元格](../../images/html5/table-colgroup.jpg)

5\. 合并单元格`colspan`和`rowspan`

![合并单元格`colspan`和`rowspan`](../../images/html5/merge-cells.png)

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

![合并单元格](../../images/html5/table.gif)

## 表单

### `&lt;form>`表单标记
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

### `&lt;input>`输入标记
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

### `&lt;select>`选择列表标记

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

### `&lt;textarea>`文本域标记
一般用于给用户填写备注信息或留言信息的多行多列文本区域
```html
<textarea name="文本区域名称" rows="行数" cols="字符数">
    ...(此处输入的为默认文本，比如)请在此处输入备注信息
</textarea>
```
