#import "nju-thesis/template.typ": documentclass, tablex, fig, tlt, indent

// 双面模式，会加入空白页，便于打印
#let twoside = false
// #let twoside = true

#let (
  doc, preface, mainmatter, mainmatter-end, appendix,
  fonts-display-page, cover, decl-page, abstract, abstract-en, outline-page, list-of-figures, list-of-tables, notation, acknowledgement,
) = documentclass(
  // type: "bachelor",  // "bachelor" | "master" | "doctor" | "postdoc", 文档类型，默认为本科生 bachelor
  // degree: "academic",  // "academic" | "professional", 学位类型，默认为学术型 academic
  // anonymous: true,  // 盲审模式
  twoside: twoside,  // 双面模式，会加入空白页，便于打印
  // 可自定义字体，先英文字体后中文字体，应传入「宋体」、「黑体」、「楷体」、「仿宋」、「等宽」
  // fonts: (楷体: ("Times New Roman", "FZKai-Z03S")),
  info: (
    title: ("基于 Typst 的", "南京大学学位论文"),
    title-en: "My Title in English",
    grade: "20XX",
    student-id: "1234567890",
    author: "张三",
    author-en: "Ming Xing",
    department: "某学院",
    department-en: "School of Chemistry and Chemical Engineering",
    major: "某专业",
    major-en: "Chemistry",
    supervisor: ("李四", "教授"),
    supervisor-en: "Professor My Supervisor",
    // supervisor-ii: ("王五", "副教授"),
    // supervisor-ii-en: "Professor My Supervisor",
    submit-date: datetime.today(),
  ),
)

// 文稿设置
#show: doc

// 字体展示测试页
// #fonts-display-page()

// 封面页
#cover()

// 声明页
#decl-page()


// 前言
#show: preface

// 中文摘要
#abstract(
  keywords: ("顶格", "黑体", "小四号", "与摘要隔一行")
)[
  中文摘要应将毕业设计(论文)要点简明扼要地表达出来,是一篇具有独立性和完整性的短文。内容应包括工作目的、研究方法、成果和结论。关键词是为了文献标引工作从论文中选取出来用以表示全文主题内容信息款目的单词或术语,毕业设计(论文)中文摘要一般 300 字左右,关键词 3-5 个。英文摘要和关键词应与中文对应。

  首行缩进2个字符，正文用宋体小四号，1.5倍行距，中文摘要不少于300字，一般控制在300～500字。
]

// 英文摘要
#abstract-en(
  keywords: ("顶格", "Times New Roman", "加黑", "小四号")
)[
  From "silica" to "Naquada", this is an example of transliterated words replacing free-translated words. However, such examples are rare in Chinese. Because Chinese people generally don’t like transliterated words, but like free-translated words. The latter can make the meaning of the words clear, while the former does not have this feature. So why does the Chinese translation of Naquadah take exactly the opposite path? There may be many reasons for this. First of all, compared with "Naquada", the name "silica" is a bit long. Secondly, it is important to understand "silica" literally, which is still somewhat distant from Naquadah. However, it is not easy to come up with an appropriate name. 
  
  首行空2个字符内容采用小四号Times New Roman字体，1.5倍行距。两端对齐，标点符号用英文标点符号。与中文摘要部分的关键词对应，每个关键词之间用分号间隔，关键词首字母大写。
]

// 目录
#outline-page()

// 插图目录
#list-of-figures()

// 表格目录
#list-of-tables()

// 正文
#show: mainmatter

// 符号表
#notation[
  / DFT: 密度泛函理论 (Density functional theory)
  / DMRG: 密度矩阵重正化群密度矩阵重正化群密度矩阵重正化群 (Density-Matrix Reformation-Group)
]

= 基本功能

== 脚注

我们可以添加一个脚注。#footnote[脚注内容]

== 列表

=== 无序列表

- 无序列表项一
- 无序列表项二
  - 无序子列表项一
  - 无序子列表项二

=== 有序列表

+ 有序列表项一
+ 有序列表项二
  + 有序子列表项一
  + 有序子列表项二

=== 术语列表

/ 术语一: 术语解释
/ 术语二: 术语解释

== 图表

引用@tbl:timing，引用@tbl:timing-tlt，以及@fig:nju-logo。引用图表时，表格、图片和代码分别需要加上 `tbl:`、`fig:` 和 `lst:` 前缀才能正常显示编号。以及这里使用 `fig` 函数替代原生 `figure` 函数以支持将 `tablex` 作为表格来识别。

#align(center, (stack(dir: ltr)[
  #fig(
    tablex(
      align: center + horizon,
      columns: 4,
      [t], [1], [2], [3],
      [y], [0.3s], [0.4s], [0.8s],
    ),
    caption: [常规表],
  ) <timing>
][
  #h(50pt)
][
  #fig(
    tlt(
      columns: 4,
      [t], [1], [2], [3],
      [y], [0.3s], [0.4s], [0.8s],
    ),
    caption: [三线表],
  ) <timing-tlt>
]))

#fig(
  image("nju-thesis/assets/vi/nju-emblem.svg", width: 20%),
  caption: [图片测试],
) <nju-logo>


== 数学公式

可以像 Markdown 一样写行内公式 $x + y$，以及带编号的行间公式：

$ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>

引用数学公式需要加上 `eqt:` 前缀，则由@eqt:ratio，我们有：

$ F_n = floor(1 / sqrt(5) phi.alt^n) $

#indent 图表和公式后的段落要用 `#indent` 手动缩进。同时，我们也可以通过 `<->` 标签来标识该行间公式不需要编号

$ y = integral_1^2 x^2 dif x $ <->

而后续数学公式仍然能正常编号。

$ F_n = floor(1 / sqrt(5) phi.alt^n) $

== 参考文献

可以像这样引用参考文献：@wang2010guide 和 @kopka2004guide。

== 代码块

```py
def add(x, y):
  return x + y
```


= 正文

== 正文子标题

=== 正文子子标题

正文内容


// 手动分页
#if (twoside) {
  pagebreak() + " "
}
// 参考文献
#bibliography(("bibs/ex01.bib", "bibs/ex02.bib"),
  style: "ieee"
)


// 致谢
#acknowledgement[
  感谢 NJU-LUG，感谢 NJUThesis LaTeX 模板。
]

// 手动分页
#if (twoside) {
  pagebreak() + " "
}

// 正文结束标志，不可缺少
#mainmatter-end()

// 附录
#show: appendix

= 附录

== 附录子标题

=== 附录子子标题

附录内容，这里也可以加入图片，例如@fig:appendix-img。

#fig(
  image("nju-thesis/assets/vi/nju-emblem.svg", width: 20%),
  caption: [图片测试],
) <appendix-img>
