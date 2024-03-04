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
#show: doc.with(margin: (
  top: 3cm,
  bottom: 2.5cm,
  left: 2.5cm,
  right: 2cm
  )
)

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
// #list-of-figures()

// 表格目录
// #list-of-tables()

// 正文
#show: mainmatter

// 符号表
// #notation[
//   / DFT: 密度泛函理论 (Density functional theory)
//   / DMRG: 密度矩阵重正化群密度矩阵重正化群密度矩阵重正化群 (Density-Matrix Reformation-Group)
// ]

= 基本功能

== 脚注

=== 叉叉

很喜欢太宰治在《人间失格》中的一句话：“先穿袜子后穿鞋，先当孙子后当爷”。但是这句话对百儿京儿人并不适用，因为百儿京儿人生来就是爷。如果说的再准确点，那就是百儿京儿二环。

小时候，他和她是青梅竹马，唯一不同的是，他在二环内，她在二环外。他听大人说才隐约明白，他是百儿京儿贵族，身份与她不同。她总是在吃窝窝头，有一天她拿了一个给他吃，百儿京儿的爷哪吃过这么糙的东西啊，他吃了一口就吐了出来。她也不生气，只是傻傻地看着他笑了。那是他第一次心动，想对她说什么，最后却还是没有说出口。

离别那天，她的眼里哀求着他的挽留，她也不知说什么才能表达自己的心意，吭哧吭哧半天，说出口的却是：“我想和你一辈子在一起，天天吃窝窝头。”他愣住了，想试着鼓起勇气，吭哧吭哧了半天，说出口的却是：“百儿京儿的爷就是爷。”

他又能说什么呢，出生在百儿京儿二环内的那一刻起，就注定了他俩不同的人生。

后来的几十年再也没遇到她。

直播时，他总是对着镜头说：“除了吃就是喝，没别哒”。其实并非如此，除了吃和喝，余生都在想她。

他不曾想过，真的有一天还能再遇到她。在人流如潮的大街上，他远远地看到一个苍老臃肿的老妇向他迎面走来。虽然岁月磨去了她美丽的容颜，可她的名字还是情不自禁地从他的嘴角唤出。

她站住了，脸上现出欢喜和凄凉的神情；动着嘴唇，却没有作声。她的态度终于恭敬起来了，分明的叫道："老爷！......"

他似乎打了一个寒噤；他知道，他们之间已经隔了一层可悲的厚障壁了。他也说不出话。

“我想和你一辈子在一起，天天吃窝窝头。”那个小女孩笨拙的告白仿佛还是在昨天，总想着来日方长，却没想到一辈子真就那么一眨眼就过去了，有那么多遗憾却是再也没法填平了。

这天，他对着镜头说：“您猜怎么着？咱老百儿京儿人今儿个改吃窝头了”，说罢大口大口地吃了起来，眼泪却不知什么时候流了下来。

弹幕问：“道爷，您怎么哭了？”

他没作理会，竖起大拇指说：“嘿，真地道！” 眼泪流进了嘴里，窝头是甜的，眼泪是咸的。

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
