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

## CSS语法 {#grammar}

CSS 规则由两个主要的部分构成：选择器，以及一条或多条声明:

![CSS语法](../../images/css/base.jpg)

选择器通常是您需要改变样式的 HTML 元素。每条声明由一个属性和一个值组成。  
属性（property）是您希望设置的样式属性（style attribute）。每个属性有一个值。属性和值被冒号分开。