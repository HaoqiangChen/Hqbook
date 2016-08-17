# SVG

SVG表示可缩放矢量图形，是基于可扩展标记语言（标准通用标记语言的子集），用于描述二维矢量图形的一种图形格式，它在2003年1月14日成为W3C推荐标准。

## 什么是SVG？

* SVG 指可伸缩矢量图形 (Scalable Vector Graphics)
* SVG 用于定义用于网络的基于矢量的图形
* SVG 使用 XML 格式定义图形
* SVG 图像在放大或改变尺寸的情况下其图形质量不会有损失
* SVG 是万维网联盟的标准
* SVG 与 DOM 和 XSL 之类的 W3C 标准是一个整体

## SVG优势

与其他图像格式相比（比如 JPEG 和 GIF），使用 SVG 的优势在于：
* SVG 图像可通过文本编辑器来创建和修改
* SVG 图像可被搜索、索引、脚本化或压缩
* SVG 是可伸缩的
* SVG 图像可在任何的分辨率下被高质量地打印
* SVG 可在图像质量不下降的情况下被放大

## 使用方式

可在浏览器直接打开

> 在HTML中的使用

SVG 文件可通过以下标签嵌入 HTML 文档：`<embed>`, `<object>`, `<iframe>`和`<img>`。  
SVG的代码可以直接嵌入到HTML页面中，或直接链接到SVG文件

1. `<embed>`, `<object>`, `<iframe>`标签嵌入
```html
<embed width="300px" height="300px" src="img/demo.svg" type="image/svg+xml" />
<object width="300px" height="300px" data="img/demo.svg" type="image/svg+xml"></object>
<iframe width="300px" height="300px" src="img/demo.svg"></iframe>
```

标签 | 优势 | 缺点
:-: | :-: | :-:
`<embed>`标签 | 所有主要浏览器都支持，并允许使用脚本 | 不推荐在HTML4和XHTML中使用（但在HTML5允许）
`<object>`标签 | 所有主要浏览器都支持，并支持HTML4，XHTML和HTML5标准 | 不允许使用脚本
`<iframe>`标签 | 所有主要浏览器都支持，并允许使用脚本 | 不推荐在HTML4和XHTML中使用（但在HTML5允许）

2. 直接在HTML嵌入SVG代码

```html
<!DOCTYPE html>
<html>
<body>
 
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="190">
  <polygon points="100,10 40,180 190,60 10,60 160,180"
  style="fill:lime;stroke:purple;stroke-width:5;fill-rule:evenodd;">
</svg>
 
</body>
</html>
```

> @[把 SVG 直接嵌入 HTML 页面]{`../../demo/demo.html?demoname=html5_svg_demo`}
> `../../images/home/html5.png`

3. 使用`<img>`标签

使用img和或者bject等标签直接引用svg。这种方法的缺点主要在于要求每个图标都单独保存成一个SVG文件，使用时也是单独请求的，增加了HTTP请求
```html
<img src="img/demo.svg" width="300px" height="300px"/>
```
4. 链接到svg文件
```html
<a href="img/demo.svg">查看svg</a>
```

> 在css中使用

```css
.container{
  background: white url(img/demo.svg) repeat;
}
```

## SVG 与 Canvas两者间的区别

SVG 是一种使用 XML 描述 2D 图形的语言。  
Canvas 通过 JavaScript 来绘制 2D 图形。  
SVG 基于 XML，这意味着 SVG DOM 中的每个元素都是可用的。您可以为某个元素附加 JavaScript 事件处理器。  
在 SVG 中，每个被绘制的图形均被视为对象。如果 SVG 对象的属性发生变化，那么浏览器能够自动重现图形。  
Canvas 是逐像素进行渲染的。在 canvas 中，一旦图形被绘制完成，它就不会继续得到浏览器的关注。如果其位置发生变化，那么整个场景也需要重新绘制，包括任何或许已被图形覆盖的对象。

## Canvas 与 SVG 的比较

下表列出了 canvas 与 SVG 之间的一些不同之处。
<table style="width: 80%;"><tbody><tr><th width="50%"align="left">Canvas</th><th width="50%"align="left">SVG</th></tr><tr><td><ul><li><p>依赖分辨率</p></li><li><p>不支持事件处理器</p></li><li><p>弱的文本渲染能力</p></li><li><p>能够以.png或.jpg格式保存结果图像</p></li><li><p>最适合图像密集型的游戏，其中的许多对象会被频繁重绘</p></li></ul></td><td><ul><li><p>不依赖分辨率</p></li><li><p>支持事件处理器</p></li><li><p>最适合带有大型渲染区域的应用程序（比如谷歌地图）</p></li><li><p>复杂度高会减慢渲染速度（任何过度使用DOM的应用都不快）</p></li><li><p>不适合游戏应用</p></li></ul></td></tr></tbody></table>

## 更多教程

> @[SVG 详解（二）基本概念]{`https://blog.csdn.net/qq_25243451/article/details/79792832`}
> `../../images/home/html5.png`

***

> @[SVG 详解（三）基础语法]{`https://blog.csdn.net/qq_25243451/article/details/80012696`}
> `../../images/home/html5.png`

***

> @[SVG 详解（四）其他常用标签]{`https://blog.csdn.net/qq_25243451/article/details/80044681`}
> `../../images/home/html5.png`

***

> @[菜鸟 SVG 教程]{`https://www.runoob.com/svg/svg-tutorial.html`}
