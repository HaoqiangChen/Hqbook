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
