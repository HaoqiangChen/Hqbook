# CSS层叠样式表

CSS 指层叠样式表 (Cascading Style Sheets)

## DIV+CSS详解

在CSS布局方式中,DIV是这种布局方式的核心对象,我们的页面排版不再依赖于表格. 仅从DIV的使用上说,做一个简单的布局只需要两样东西:DIV与CSS.因此我们称这种布局方式为 DIV + CSS 布局。
* DIV：布局容器标签
div 是XHTML中指定的,专门用于布局设计的容器标签。用于存放html 元素，文字，图片，视频的元素。内容样式由CSS指定。
* CSS：层叠样式表
CSS（Cascading Style Sheet，层叠样式表）是一种格式化网页的标准方式，是用于控制网页样式并允许样式信息与网页内容分离的一种技术。

![DIV+CSS](../../images/css/div+css.png)

**DIV+CSS的优势**  
1. 符合 W3C标准，微软等公司均为 W3C支持者。
2. 能够对网页的布局、字体、颜色、背景等图文效果实现更加精确的控制,调整更加方便,现在很多网站均使用DIV+CSS框架模式,更加印证DIV+CSS是大势所趋
3. 将格式和结构分离，有利于格式的重用及网页的修改维护，在团队开发中更容易分工合作而减少相互关联性
4. CSS的极大优势表现在简介的代码，制作体积更小，下载更快，节省大量带宽，而且众所周知，搜索引擎喜欢简洁的代码。
5. 利用CSS样式表，可以将站点上的所有网页都只指向同一个CSS文件，可以实现许多网页同时更新。

**什么是W3C标准？**  
`W3C标准`不是一个标准，而是一系列标准的集合，包含三部分的标准：`结构标准`、`表现标准`和`动作标准`。  
与结构标准对应的代表语言是`xHTML`，与表现标准对应的代表语言是`CSS`，与动作标准对应的代表语言是`JavaScript`。

## CSS语法 {#grammar}

CSS 规则由两个主要的部分构成：选择器，以及一条或多条声明:  
CSS声明总是以分号(;)结束，声明总以大括号({})括起来:

![CSS语法](../../images/css/base.jpg)

选择器通常是您需要改变样式的 HTML 元素。每条声明由一个属性和一个值组成。  
属性（property）是您希望设置的样式属性（style attribute）。每个属性有一个值。属性和值被冒号分开。  

**CSS注释：** CSS注释以 `/*` 开始, 以 `*/` 结束。  
为了让CSS可读性更强，你可以每行只描述一个属性:
```css
/*这是个注释*/
p {
    text-align:center;
    color:black;
    /*这是另一个注释*/
    /*font-family:arial;*/
}
```

### CSS的应用和引入方式

* 【内嵌式】：在HTML文档内部，将CSS代码卸载`<head>`标记之间，并需要采用`<style>`标记进行声明
```html
<head>
    <style>
        p{color:red;}
    </style>
</head>
```
* 【内联式】：选择你想控制的`HTML标签`，给它添加`style属性`，注意这种方式的引入CSS，是不需要写选择器的
```html
<h1 style="color:red;"></h1>
```
* 【链接式】：在实际网站建设中，链接式CSS用法是最常用效果最好的。
  1. 新建一个以css为后缀的文件。在里面写入css。
  2. 在需要用到该css的HTML内部的`<head>`标记中加入link标签，href属性指明外部CSS文件的路径。
```html
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css" />
</head>
```
* 【导入式】：与链接式的用法基本相同，区别在于语法和使用方法上略有不用。
```html
<style>
    @import url(css/index.css);
</style>
```

## CSS选择符 {#selector}

### 通配选择符

`*` 星号选择器将匹配页面里的每一个元素，但我建议你永远不要再生产代码中使用它。它给浏览器带来大量不必要的负担。
```css
*{margin:0; padding:0;}
```

### 标签选择符

标签选择符（也叫类型选择符）：也就是把html标签名作为选择符。
```css
ul { list-style:none; }
img{ width: 100%;}
```

### id选择符

给所需样式标签自定义id名.然后在css文件内写上`#自定义id名{CSS样式}`
```css
#IDname {width: 960px; margin: auto; }
```

> [!Warning|label: 注意]
> 每个id名都必须不同，应该慎重使用ID选择器。

### 类选择符（class）

自定义class名,使用方法:在css文件内写上`.class名{css样式}`
```css
.className {border-color: blue; font-size:16px;}
```

> [!Warning|label: 注意]
> 一个标签可以用多个class名,一个class名可以供多个标签使用。

### 群组选择符

同时控制多个标签。标签名用`,`隔开
```css
a,p,span{}
```

### 组合选择符

我们还可以通过`标签名,id名,class名`混搭的方式来选择，添加样式
```css
div .p {} /*表示div标签下的所有class为p的标签。*/
div,#a {} /*表示id为a的标签和所有的div标签。*/
```

### 关系选择符

选择符 | 名称 | 描述 | 版本 | 英文名
:-- | :-- | :--
E F | 包含选择符 |  选择所有被E元素包含的F元素。 | CSS1 |  (Descendant combinator)这个也有叫后代选择器的
E>F | 子选择符 |    选择所有作为E元素的子元素F。 | CSS2 |  (Child combinator)
E+F | 相邻选择符 |  选择紧贴在E元素之后F元素。 |   CSS2 |  (Adjacent sibling combinator)
E~F | 兄弟选择符 |  选择E元素所有兄弟元素F。 |     CSS3 |  (General sibling combinator)

### 伪类选择符

不是所有的标签都能使用伪类选择符,在此处我们只讲a标签的伪类选择符
* `a:link {color: #FF0000; text-decoration: none}`         未访问的链接
* `a:visited {color: #00FF00; text-decoration: none}`      已访问的链接
* `a:hover {color: #FF00FF; text-decoration: underline}`   鼠标在链接上
* `a:active {color: #0000FF; text-decoration: underline}`  激活链接

> [!Warning|label: 注意]
> 以上的a标签伪类你可以写1个或者写多个。但是一定要按照顺序写，否则会出问题！

选择符 | 版本 | 描述
:-- | :-- | :--
E:link                | CSS1    | 设置超链接a在未被访问前的样式。
E:visited             | CSS1    | 设置超链接a在其链接地址已被访问过时的样式。
E:hover               | CSS1/2  | 设置元素在其鼠标悬停时的样式。
E:active              | CSS1/2  | 设置元素在被用户激活(在鼠标点击与释放之间发生的事件)时的样式。
E:focus               | CSS1/2  | 设置元素在成为输入焦点(该元素的onfocus事件发生)时的样式。
E:lang(fr)            | CSS2    | 匹配使用特殊语言的E元素。很少用
E:not(s)              | CSS3    | 匹配不含有s选择符的元素E。
E:root                | CSS3    | 匹配E元素在文档的根元素。常指html元素
E:first-child         | CSS2    | 匹配父元素的第一个子元素E。
E:last-child          | CSS3    | 匹配父元素的最后一个子元素E。
E:only-child          | CSS3    | 匹配父元素仅有的一个子元素E。
E:nth-child(n)        | CSS3    | 匹配父元素的第n个子元素E。
E:nth-last-child(n)   | CSS3    | 匹配父元素的倒数第n个子元素E。
E:first-of-type       | CSS3    | 匹配同类型中的第一个同级兄弟元素E。
E:last-of-type        | CSS3    | 匹配同类型中的最后一个同级兄弟元素E。
E:only-of-type        | CSS3    | 匹配同类型中的唯一的一个同级兄弟元素E。
E:nth-of-type(n)      | CSS3    | 匹配同类型中的第n个同级兄弟元素E。
E:nth-last-of-type(n) | CSS3    | 匹配同类型中的倒数第n个同级兄弟元素E。
E:empty               | CSS3    | 匹配没有任何子元素（包括text节点）的元素E。
E:checked             | CSS3    | 匹配用户界面上处于选中状态的元素E。(用于input type为radio与checkbox时)
E:enabled             | CSS3    | 匹配用户界面上处于可用状态的元素E。
E:disabled            | CSS3    | 匹配用户界面上处于禁用状态的元素E。
E:target              | CSS3    | 匹配相关URL指向的E元素。

> `first-child`与`first-of-type`的区别：举例来说

```html
<div class="test">
    <p>第一个子元素</p>
    <h1>第二个子元素</h1>
    <span>第三个子元素</span>
    <span>第四个子元素</span>
</div>
```
* `p:first-child`  匹配到的是p元素,因为p元素是div的第一个子元素；
* `h1:first-child`  匹配不到任何元素，因为在这里h1是div的第二个子元素，而不是第一个；
* `span:first-child`  匹配不到任何元素，因为在这里两个span元素都不是div的第一个子元素；

* `p:first-of-type`  匹配到的是p元素,因为p是div的所有为p的子元素中的第一个，事实上这里也只有一个为p的子元素；
* `h1:first-of-type`  匹配到的是h1元素，因为h1是div的所有为h1的子元素中的第一个，事实上这里也只有一个为h1的子元素；
* `span:first-of-type`  匹配到的是第三个子元素span。这里div有两个为span的子元素，匹配到的是第一个。

所以，通过以上两个例子可以得出结论：  
* `:first-child` 匹配的是某父元素的第一个子元素，可以说是结构上的第一个子元素。
* `:first-of-type` 匹配的是某父元素下相同类型子元素中的第一个，比如 `p:first-of-type`，就是指所有类型为p的子元素中的第一个。这里不再限制是第一个子元素了，只要是该类型元素的第一个就行了。

> [!Warning|label: 注意]
> 当然这些元素的范围都是属于同一级的，也就是同辈的。  
> 同样类型的选择器`:last-child`和`:last-of-type`、`:nth-child(n)`和`:nth-of-type(n)`也可以这样去理解。

### 属性选择符

选择符 | 版本 | 描述
:-- | :-- | :--
E[att]        | CSS2 | 选择具有att属性的E元素。
E[att="val"]  | CSS2 | 选择具有att属性且属性值等于val的E元素。
E[att~="val"] | CSS2 | 选择具有att属性且属性值为一用空格分隔的字词列表，其中一个等于val的E元素。
E[att^="val"] | CSS3 | 选择具有att属性且属性值为以val开头的字符串的E元素。
E[att$="val"] | CSS3 | 选择具有att属性且属性值为以val结尾的字符串的E元素。
E[att*="val"] | CSS3 | 选择具有att属性且属性值为包含val的字符串的E元素。
E[att&#124;="val"] | CSS2 | 选择具有att属性且属性值为以val开头并用连接符"-"分隔的字符串的E元素。

### 伪对象选择符

选择符 | 版本 | 描述
:-- | :-- | :--
E:first-letter/E::first-letter | CSS1/3 | 设置对象内的第一个字符的样式。
E:first-line/E::first-line     | CSS1/3 | 设置对象内的第一行的样式。
E:before/E::before             | CSS2/3 | 设置在对象前（依据对象树的逻辑结构）发生的内容。用来和content属性一起使用
E:after/E::after               | CSS2/3 | 设置在对象后（依据对象树的逻辑结构）发生的内容。用来和content属性一起使用
E::placeholder                 | CSS3   | 设置对象文字占位符的样式。
E::selection                   | CSS3   | 设置对象被选择时的颜色。

> [!Warning|label: 注意]
> CSS3的语法改成:: ,原本CSS1是: ,故一般直接用两个冒号为妥。如果为了兼容IE浏览器的话，就用一个冒号。
> 举例：`input::-webkit-input-placeholder {color: green;}`

**[30个你必须记住的CSS选择符](http://www.open-open.com/lib/view/open1429583085104.html)**

## CSS的冲突(即优先级)

CSS本身的设置可以同时应用多个样式在同一个元素，此时样式之间可能出现冲突而达不到用户所想要的效果。

**解决CSS冲突的优先级规则：**
* CSS层叠样式表引入方法的优先级：`内联式>内嵌式>链接式>导入式`
* 在多个外部样式中，后出现的样式的优先级高于先出现的样式，也就是俗称的覆盖
* 在样式中，选择器的优先级：`ID样式>class样式>标记样式`（以权重比喻：id的权重为100，class的权重为10,标签名的权重为1）
* 在样式后面加一个`!important`，例如这样：`.abc {background:#fff !improtant;}` 这个样式的优先级就会默认提升到顶级，全局样式就无法影响到它了。

> [!Warning|label: 注意]
> `!important`要写在分号的前面

**优先级：**
1. 就近原则（离代码越近，优先级越高）
2. 选择范围越小，优先级越高。细化CSS，通过多加父元素的选择符一层层包住，缩小选择范围

### 样式继承

继承是指我们设置上级(父级)的CSS样式，上级（父级）及以下的子级（下级）都具有此属性。一般只有文字文本具有继承特性，如文字大小、文字加粗、文字颜色、字体等。但注意有一些css样式是不具有继承性的。如`border:1px solid red;`

举例：
```html
<p style="color:red;">如果你不知道自己<span>想做什么该做什么</span>，那你什么都做不好。</p>
```
说明：
1. 我设置`上级(父级：p)`的文字颜色为红色，而`子级(span)`未设置文字颜色，但是文字具有继承特性，所以子级文字内容依然是红色。
2. 假如设置父级文字颜色样式后，其多个子级因继承而与父级相同，若有些子级颜色不想与父级相同，这个时候只需对对应子级设置需要颜色即可。

> [!Warning|label: 注意]
> 还有一个权值比较特殊--继承也有权值但很低，有的文献提出它只有0.1，所以可以理解为继承的权值最低。

**继承好处：**可以只设置上级的CSS样式表属性，子级（下级）不用设置，都有此CSS属性，可以减少CSS代码，便于维护。

**[CSS中可以和不可以继承的属性](http://www.cnblogs.com/thislbq/p/5882105.html)**

## CSS选择器命名及常用命名

规范的命名也是Web标准中的重要一项，标准的命名可以使代码更加易读，而且利于搜索引擎搜索，比如定义了两个div，一个 id 命名为“div1”，另外一个命名为“News”，肯定第二个比较易读，而且搜索引擎抓取率要高，在团队合作中还可以大大提高工作效率。为了达到这种效果我们就要规范化命名（语义化命名）！

关于CSS命名法，和其他的程序命名差不多，主要有三种：`骆驼命名法`，`帕斯卡命名法`，`匈牙利命名法`。看他们的名字挺不好理解的，不要被吓到了，其实很容易，不信的话继续往下看~

### 骆驼命名法

说到骆驼大家肯定会想到它那明显的特征，背部的隆起，一高一低的，我们的命名也要这样一高一低，怎么才能这样，就用大小写字母呗~，大写的英文就相当于骆驼背部的凸起，小写的就是凹下去的地方了，但是这个也是有规则的，就是第一个字母要小写，后面的词的第一个字母就要用大写，如下：  
`#headerBlock` 如果第二个单词后面还有单词呢？那就是下面这种情况，  
`.navMenuRedButton` 也就是说，无论几个单词凑一块，后面所有单词癿首字母都要大写。

### 帕斯卡命名法

这种命名法同样也是大小写字母混编而成，和骆驼命名法很像，但和骆驼命名法有一点区别，就是所有单词的首字母都要大写，当然也包括第一个单词，如下：  
`#HeaderBlock`  
`.NavMenuRedButton`  
题外话，如果说“骆驼命名法”是单峰驼的话，那么“帕斯卡命名法”就是双峰驼了~

### 匈牙利命名法

匈牙利命名法，是需要在名称前面加上一个或多个小写字母作为前缀，来让名称更加好认，更容易理解，比如：  
`#head_navigation`  
`.red_navMenuButton`  

以上三种，前两种（骆驼命名法、帕斯卡命名法）在命名CSS选择器的时候比较常用，当然这三种命名法可以混合使用，另需要遵守一个原则“容易理解，方便协同工作”就OK了，或者说”即使不懂代码的人看了代码也知道这块起什么作用”，没有必要强调是那种命名法，根据个人喜好使用就行。

<div style="background: whitesmoke;border-radius: 6px;text-indent: 50px;">
    <table align="center" width="1000px" height="180px" cellspacing="0" border="1">
        <caption style="font-weight: bold;font-size: 18px">页面模块的常用命名</caption>
        <tr> <td>头：header</td> <td>导航：nav</td> <td>菜单：menu</td> <td>友情链接：friendlink</td> </tr>
        <tr> <td>页面外围包裹：wrapper</td> <td>子导航：subnav</td> <td>子菜单：submenu</td> <td>下载：download</td> </tr>
        <tr> <td>页面主体：main</td> <td>广告：banner</td> <td>侧栏：sidebar</td> <td>小技巧：tips</td> </tr>
        <tr> <td>内容：content</td> <td>标志：logo</td> <td>栏目：column</td> <td>滚动：scroll</td> </tr>
        <tr> <td>页脚：footer</td> <td>搜索：search</td> <td>热点：hot</td> <td>上一个：prev</td> </tr>
        <tr> <td>版权：copyright</td> <td>登录条：loginbar</td> <td>新闻：news</td> <td>下一个：next</td> </tr>
    </table>
</div>

## CSS常用属性 {#property}

> [!Tip|label: 温馨提醒]
> 关于CSS属性个人建议查看手册更加详细方便，我这里就几种常用属性进行分类并简单取几个常用属性值做下笔记

### css样式的书写顺序

1. 定位属性：position  display  float  left  top  right  bottom   overflow  clear   z-index
2. 自身属性：width  height  padding  border  margin   background
3. 字体样式：font-style font-variant font-weight font-size/line-height font-family color
4. 文本属性：text-align vertical-align text-wrap text-transform text-indent text-decoration letter-spacing word-spacing white-space text-overflow
5. css3中新增属性：content   box-shadow   border-radius  transform……

### 字体样式

字体的缩写,写法是`font:font-style font-variant font-weight font-size/line-height font-family`，一定要按照顺序来写

font属性 | 描述 | 属性值(说明)
:-- | :-- | :--
font-style | 字体样式 | `normal`(正常);`italic`(斜体);`oblique`(倾斜的字体样式)
font-variant | 字母(字体偏小)全大写或正常 | `normal`(正常);`small-caps`(小型的大写字母);
font-weight | 字体粗细 | `normal`(正常);`bold`(粗体);`bolder`(特粗);`lighter`(细体);直接用数字表示（数值100-900）
font-size | 字体大小 | px、em、rem
line-height | 字体行高 | 可以用长度px; 百分比（基于字体的高度尺寸）; 用数值(乘积因子)指定行高
font-family | 字体系列 | 指定文本使用某个字体或字体序列，值用单引号包起来,默认是宋体.下面举例说明下

`font-family`举例说明：
```css
body{font-family:helvetica,verdana,sans-serif;}
```
按优先顺序排列。以逗号隔开。如上字体定义，假设你电脑上没有helvetica字体，但有verdana，这时将会以verdana显示你的文字。

#### @font-face嵌入字体

@font-face能够加载服务器端的字体文件，让浏览器端可以显示用户电脑里没有安装的字体。

**基本语法：**
```css
@font-face {
    font-family : 自定义字体名称;
    src : url(字体文件在服务器上的相对或绝对路径)  format(字体类型);
}
```
**举例：**
```css
@font-face {/*该写法是兼容所有的浏览器*/
  font-family : bgg;
  src: url('fonts/fontawesome-webfont.eot'), /* IE9+ */
  url('fonts/fontawesome-webfont.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
  url('fonts/fontawesome-webfont.woff') format('woff'), /* chrome、firefox */
  url('fonts/fontawesome-webfont.ttf') format('truetype'), /* chrome、firefox、opera、Safari,Android, iOS 4.2+*/
   url('fonts/fontawesome-webfont.svg') format('svg'); /* iOS 4.1+ */
}
p{ font-family: bgg }
```

### 文本样式

text属性 | 描述 | 属性值(说明)
:-- | :-- | :--
text-indent | 文本缩进 | 值是以em为单位的数值,1em等于一个字的宽度.
text-align | 文本水平对齐 | `left`(左对齐);`center`(居中对齐);`right`(右对齐);`justify`(两端对齐)
vertical-align | 文本垂直对齐 | `middle`(父元素的中部);`top`(与行中最高元素的顶端对齐);`text-top`(与父元素字体的顶端对齐);还有其他见手册
letter-spacing | 文字间距 | `normal`(正常);以px为单位的数值
word-wrap | 文本换行 | `normal`(允许内容顶开或溢出);break-word(内容将在边界内换行。如果需要，单词内部允许断行)
text-decoration | 下划线控制 | `none`(没有下划线,默认);`underline`(下划线);`blink`;`overline`(上划线);`line`-through(删除线)
text-transform | 文本的大小写 | `capitalize`(首字母大写);`uppercase`(转换成大写);`lowercase`(转换成小写);
color | 文本颜色 | 下面单独说明

**文本颜色 `color`**
* `颜色名称` `16种基本色`为aqua,black,blue,fuchsia,gray,green,lime,maroon,navy,olive,purple,red,silver,tealwhite,and yellow.
* `16进制（hex）`色彩控制（6位数），其格式为 #336699。支持某些hex值的快捷计数法。比如， #336699可以被称为 #369。
* `RGB值` RGB的数值范围从0到255，R代表红色，G代表绿色，B代表蓝色。举例：`{ color: rgb(51,204,0) }`

### 列表样式 `list-style`(ul)

* `list-style-image:url("./dot.gif");`  图片式符号，选择图像作为列表项的引导符号
* `list-style-position`：列表符号位置, `outside`（默认值，列表与符号贴近）; `inside`（列表缩进，与符号相离）
* `list-style-type`：符号类型（这里列举几种常用的，若需要日文平假片假什么的可以查手册）

值 | 描述 | 值 | 描述 | 值 | 描述
:-: | :-: | :-: | :-: | :-: | :-:
none | 无标记 | disc | 默认。实心圆 | circle | 空心圆
square | 实心方块 | decimal | 数字 | decimal-leading-zero | 0开头的数字标记。(01, 02, 03, 等。)
lower-alpha | 小写英文字母 | upper-alpha | 大写英文字母 | lower-roman | 小写罗马数字(i, ii, iii, iv, v, 等。)
upper-roman | 大写罗马数字(I, II, III, IV, V, 等。) | lower-latin | 小写拉丁字母(a, b, c, d, e, 等。) | upper-latin | 大写拉丁字母(A, B, C, D, E, 等。)

### 背景样式 `background`

背景样式的缩写,写法是`{background: background-color background-image background-repeat background-attachment background-position;}`  
{background: 背景色 背景图片 背景平铺方式 背景图像是否固定或者随着页面的其余部分滚动 背景定位} 要按照顺序来。举例  
`background:#F00 url(header_bg.gif) no-repeat fixed left top;`

background属性 | 描述 | 属性值(说明)
:-- | :-- | :--
background-color | 背景颜色 | 同上面文本颜色`color`相同;`transparent`(透明背景)
background-image | 背景图片 | `backgroung-image:url(图片文件路径);`
background-repeat | 背景图像是否及如何重复 | `repeat`(全部平铺,默认);`no-repeat`(不平铺);`repeat-x`(横向平铺);`repeat-y`(纵向平铺);`round`(背景图像自动缩放直到适应且填充满整个容器);`space`(背景图像以相同的间距平铺且填充满整个容器或某个方向)
background-attachment | 背景图像是否固定或者随着页面的其余部分滚动 | `scroll`(默认值。背景图像会随着页面其余部分的滚动而移动);`fixed`(当页面的其余部分滚动时，背景图像不会移动);
background-position | 背景图像的起始位置 | `水平(left;right;center)+垂直(top;center;bottom)`(如果仅指定一个关键字，其他值将会是"center",举例：`background-position: left center;`其中第二个center可以省略);`x% y%`(水平位置%+垂直%,左上角是0％0％,右下角是100％100％。如果仅指定了一个值，其他值将是50％。默认值为：0％0％);`xpos ypos`(单位可以是像素（0px0px）或任何其他 CSS单位。如果仅指定了一个值，其他值将是50％。你可以混合使用％和positions)
background-size | 背景大小 | `auto`(自动，默认以图片大小);`px或百分比`(若只设置一个值，则第二个值会被设置为 "auto");`cover`(将背景图像等比缩放到完全覆盖容器，背景图像有可能超出容器。);`contain`(把图像图像扩展至最大尺寸，以使其宽度和高度完全适应内容区域。但是不超出容器);`100px 100%`(宽高比例改变);
background-origin | 相对于什么位置来定位 | `padding-box`(背景从边框之后开始,默认);`border-box`(背景图从边框开始);`content-box`(背景从内容开始)

> [!Tip|label: 注释]
> 如果背景图像的 `background-attachment` 属性为 "fixed"，则该属性没有效果。

### 边框样式 `border`

边框线的缩写：`{border:border-width border-style border-color;}`

举例：四边边框相同：`{border:1px solid #00F};`  
若想单独一条边的话，哪个方向的自己挑：`{border-[left||right||top||bottom]:border-width border-style border-color;}`

* `border-style`(边框样式): `none`(不加边框线,默认); `hidden`(隐藏边框线); `dotted`(点状虚线); `dashed`(线状虚线,常用); `solid`(实线,常用); `double`(双实线); `groove`(浅色实线); `ridge`(深浅色实线); `inset`(左上深右下浅的实线); `outset`(左上浅右下深的实线)
* `border-width`(边框宽度): 值是以px为单位的数值
* `border-color`(边框颜色): 值是颜色的英文单词或者十六进制的颜色
