# 模板

GitBook使用[Nunjucks模板语言](https://mozilla.github.io/nunjucks/)来处理页面和主题的模板。

Nunjucks语法与**Jinja2**或**Liquid**非常相似。语法使用大括号`{}`来标记需要处理的内容。

## 变量

变量从模板上下文中查找值。如果你想简单地显示一个变量，你可以使用`{{variable}}`语法。例如 ：

```twig
我的名字是{{ name }}，很高兴见到你
```

它从上下文中查找用户名并显示它。变量名称在其中可以有点像查找属性，就像JavaScript。您还可以使用方括号语法。

```twig
{{ foo.bar }}
{{ foo["bar"] }}
```

如果值未定义，则不显示任何内容。如果foo未定义，下面的所有输出都不会输出：`{{ foo }}`, `{{ foo.bar }}`, `{{ foo.bar.baz }}`。

GitBook提供了[预定义变量](#variables)。

## 过滤器

过滤器本质上是可以应用于变量的函数。它们用管道操作符(`|`)调用，并且可以接受参数。

```twig
{{ foo | title }}
{{ foo | join(",") }}
{{ foo | replace("foo", "bar") | capitalize }}
```

第三个示例显示了如何链接过滤器。首先将“ foo”替换为“ bar”，然后将其大写，从而显示“ Bar”。

## 标签

### if

`if` 根据条件选择显示内容。它的行为与JavaScript的`if`行为完全一样。

```twig
{% if variable %}
  It is true
{% endif %}
```

如果变量被定义并且计算结果为true，将显示“It is true”。否则，什么都不会显示。

您可以使用`elif`和`else`指定替代条件：

```twig
{% if hungry %}
  I am hungry
{% elif tired %}
  I am tired
{% else %}
  I am good!
{% endif %}
```

### for

`for` 遍历数组和对象。

```twig
# Chapters about GitBook

{% for article in glossary.terms['gitbook'].articles %}
* [{{ article.title }}]({{ article.path }})
{% endfor %}
```

### set

`set` 允许你创建/修改一个变量。

```twig
{% set softwareVersion = "1.0.0" %}

Current version is {{ softwareVersion }}.
[Download it](website.com/download/{{ softwareVersion }})
```

## 转义

如果您希望GitBook忽略任何特殊的模板标签，则可以使用raw，并且其中的任何内容都将以纯文本格式输出。

``` twig
{% raw %}
  this will {{ not be processed }}
{% endraw %}
```

## 内容引用 {#conref}

内容引用（conref）是一种方便的机制，可以重用其他文件或书籍中的内容。

### 导入本地文件

使用`include`标签可以轻松导入其他文件的内容：

```twig
{% include "./test.md" %}
```

### 从另一本书导入文件

GitBook还可以使用git解析包含路径：

```twig
{% include "git+https://github.com/GitbookIO/documentation.git/README.md#0.0.1" %}
```

git url的格式为：

```twig
git+https://user@hostname/owner/project.git/file#commit-ish
```

真正的git url部分应该用`.git`结尾，导入的文件名在`.git`之后被提取，直到url的片段。

`commit-ish`是引用项目的分支。默认为`master`。

### 继承

模板继承是一种方便重用的方法。在编写模板时，定义子模板可以覆盖父模板的"blocks"。

`block`定义模板上的一个部分，并用一个名字来标识它。基本模板可以指定块，子模板可以用新内容覆盖它们。

```twig
{% extends "./mypage.md" %}

{% block pageContent %}
# This is my page content
{% endblock %}
```

在`mypage.md`中，你应该指定可以扩展的块：

```twig
{% block pageContent %}
This is the default content
{% endblock %}

# License

{% include "./LICENSE" %}
```

## 变量 {#variables}

以下是书的解析和主题生成期间可用数据的参考。

### 全局变量

| 变量 | 说明 |
| -------- | ----------- |
| `book` | `book.json`的全书信息+配置设置。详情请参阅下文。 |
| `gitbook` | GitBook特定信息 |
| `page` | 当前页特定信息 |
| `file` | 与当前页特定信息相关联的文件 |
| `readme` | 自述相关内容 |
| `glossary` | 词汇相关内容 |
| `summary` | 菜单相关内容 |
| `languages` | 多语言书籍列表 |
| `output` | 输出相关内容 |
| `config` | `book.json`相关内容 |

### 书本变量

| 变量 | 说明 |
| -------- | ----------- |
| `book.[CONFIGURATION_DATA]` | 在`book.json`中的`variables`下的所有其他值都可以在这里访问 |
| `book.language` | 多语言书的当前语言 |

例如，这个`book.json`：
```json5
{
  variables: {
    hello: "everyone"
  }
}
```
...下面的文本 `{{ book.hello }}` 将会展开为 `everyone`。

### GitBook变量

| 变量 | 说明 |
| -------- | ----------- |
| `gitbook.time` | 当前时间(当你运行`gitbook`命令时)。 |
| `gitbook.version` | GitBook用于生成图书的版本 |

### 文件变量

| 变量 | 说明 |
| -------- | ----------- |
| `file.path` | 原始页面的路径 |
| `file.mtime` | 修改时间。上次修改文件的时间  |
| `file.type` | 用于编译此文件的语法解析器的名称(例如：`markdown`，`asciidoc`等) |

### 页面变量

| 变量 | 说明 |
| -------- | ----------- |
| `page.title` | 页面标题 |
| `page.previous` | 内容页的上一页(可以是`null`) |
| `page.next` | 内容页的下一页 (可以是`null`) |
| `page.dir` | 文本方向，基于配置(`rtl`或`ltr`) |

### 目录变量

| 变量 | 说明 |
| -------- | ----------- |
| `summary.parts` | 内容列表 |

可以访问整个目录(`SUMMARY.md`)：

`summary.parts[0].articles[0].title` 将返回第一篇文章的标题。

### 多语言环境变量

| 变量 | 说明 |
| -------- | ----------- |
| `languages.list` | 本书的语言环境列表 |

定义一种语言的方式：`{ id: 'en', title: 'English' }`.

### 输出变量

| 变量 | 说明 |
| -------- | ----------- |
| `output.name` | 输出生成器的名称，可能的值是`website`, `json`, `ebook` |
| `output.format` | 当 `output.name == "ebook"`, `format` 定义了将要生成的电子书的格式，可能的值是 `pdf`, `epub` 或 `mobi` |

### 自述文件变量

| 变量 | 说明 |
| -------- | ----------- |
| `readme.path` | 自述文件的路径 |

### 词汇表变量

| 变量 | 说明 |
| -------- | ----------- |
| `glossary.path` | 词汇表的路径 |

## 模板助手

GitBook提供了一个内置过滤器和块来帮助您编写模板。

### 过滤器

`value|default(default, [boolean])` 值如果未定义，则返回默认值，否则返回值。 如果boolean为true，任何JavaScript falsy值将返回默认值 (false, "", etc)

`arr|sort(reverse, caseSens, attr)` 使用JavaScript的arr.sort函数排序数组。 如果reverse为true，则结果将被反转。 默认情况下，排序不区分大小写，但将caseSens设置为true会使它区分大小写。 最后会比较数组中每个元素的的大小。

### 块

`{% markdown %}Markdown string{% endmarkdown %}`  
渲染内联markdown

`{% asciidoc %}AsciiDoc string{% endasciidoc %}`  
渲染内联asciidoc
