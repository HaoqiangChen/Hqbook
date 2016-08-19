# CSS EXAMPLE

## 字体单行或双行

更加详细请看：http://www.daqianduan.com/6179.html
```css
/*单行*/
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
font-weight: normal;
/*双行*/
/*因使用了WebKit的CSS扩展属性，该方法适用于WebKit浏览器及移动端；*/
overflow: hidden;
text-overflow: ellipsis;
display: -webkit-box;
-webkit-line-clamp: 2;
-webkit-box-orient: vertical;
``` 

## background简写方式图片铺满元素的几种写法

**1. 裁剪铺满背景,不拉伸图片形状。不要求全部展示图片的可以使用**
```css
{ background: url('../../images/home/css3.png') no-repeat center/cover; }
```
**2. 不裁剪铺满背景,不拉伸图片形状, 图片规格和屏幕一致可以使用这种方式**
```css
{ background: url('../../images/home/css3.png') no-repeat center/contain; }
```
**3. 不裁剪铺满背景, 拉伸图片形状。让整个图片全部填满元素**
```css
{ background: url('../../images/home/css3.png') no-repeat center/100% 100%; }
```

