#import "nju-thesis/template.typ": documentclass, tablex, fig, tlt, indent
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx, cellx, vlinex, hlinex
//表格包使用方法：https://github.com/PgBiel/typst-tablex
//表格划线的方法请参照本文中的案例。

// 双面模式，会加入空白页，便于打印
#let twoside = false
// #let twoside = true

#let (
  doc, preface, mainmatter, mainmatter-end, appendix,
  fonts-display-page, cover, decl-page, abstract, abstract-en, outline-page, list-of-figures, list-of-tables, notation, acknowledgement, conclusion
) = documentclass(
  // type: "bachelor",  // "bachelor" | "master" | "doctor" | "postdoc", 文档类型，默认为本科生 bachelor
  // degree: "academic",  // "academic" | "professional", 学位类型，默认为学术型 academic
  // anonymous: true,  // 盲审模式
  twoside: twoside,  // 双面模式，会加入空白页，便于打印
  // 可自定义字体，先英文字体后中文字体，应传入「宋体」、「黑体」、「楷体」、「仿宋」、「等宽」
  // fonts: (楷体: ("Times New Roman", "FZKai-Z03S")),
  info: (
    title2: ("河北工程大学typst论文模板"),
    title-en: "不用填",
    date2: "二零二四　年　三　月　六　日",
    student-id: "1234567890",
    author: "张三",
    author-en: "不用填",
    department: "材料科学与工程学院",
    department-en: "不用填",
    major: "流云4202班",
    major-en: "不用填",
    supervisor: ("李四", "不用填"),
    supervisor-en: "不用填",
    // supervisor-ii: ("王五", "副教授"),
    // supervisor-ii-en: "Professor My Supervisor",
    submit-date: datetime.today(),
  ),
)

// 文稿设置
#show: doc.with(margin: (
  top: 3cm,
  bottom: 2.5cm,
  left: 3cm,
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

  绪论应包括选题背景、目的及意义，国内外研究现状及存在问题，提出研究方法和要解决的主要问题。

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
// #notation[
//   / DFT: 密度泛函理论 (Density functional theory)
//   / DMRG: 密度矩阵重正化群密度矩阵重正化群密度矩阵重正化群 (Density-Matrix Reformation-Group)
// ]
= 我是一级标题

葛城美里和她的反“NERV”组织Wille到达因为地球核心化而呈赤红色的巴黎。船员从旗舰奇迹号上降落到一个密闭塔，他们只有720秒的时间来复原城市。此时多架“NERV”组织的福音战士出现，真希波驾驶福音战士8号机·改加以拦截。同时，碇真嗣、明日香和绫波零在日本附近徘徊。

== 我是二级标题

在某国立大学念书的花（宫崎葵 配音）与偶然来校旁听的男子（大泽隆夫 配音）坠入爱河，即使对方是一名狼人，她也义无反顾投入对方怀抱。此后的岁月里，花先后生下女儿小雪和儿子小雨。谁知厄运突然降临，温柔的丈夫撒手人寰。柔弱而坚强的花竭尽全力抚养两个孩子长大，吃穿用度，衣食住行 ，无一不牵扯她的心思。而子女狼人的身份也迫使他们离开繁华大都市，前往宁静的山野乡村求生。他们在一栋古旧的民房内落脚，小雪顽劣张扬，小雨纤细内敛，姐弟俩以狼的身姿穿行于深山密林，享受着前所未有的快乐与自由。在此期间，以韭崎爷爷（菅原文太 配音）为代表的村民也给花一家带来无微不至的关怀。小雪和小雨渐渐长大，他们也终于迎来决定身份和前路的重要时刻……小雪和小雨渐渐长大，他们也终于迎来决定身份和前路的重要时刻……

=== 我是三级标题

有点娇气任性的10岁少女千寻跟随父母搬往新家，途中误入一座神庙，来到了另一个世界：一条专门给神仙提供服务的热闹非凡的浴场街。双亲因为吃了给神准备的美食而被变成了猪。千寻仓皇逃出，此时，一个叫白的男孩出现并救了她，在白帮助下千寻得以安身。为了等待机会救出父母回到自己的世界，首先要为掌管镇中大浴场的魔女汤婆婆工作，第二要被她剥夺名字，千寻便改名为“千”。在这里有指导她工作的小玲、负责煲洗澡水的锅炉爷爷、煤炭屎鬼、以及入侵浴场捣乱的无面男等，在大家的激励下，千寻以自己的纯真之心屡屡化险为夷，并交到了许多新朋友。最终，千寻拯救了白，发现了他的真实身份。然而要救出双亲，她还必须面临严酷的考验。

当百万大军登陆诺曼底海滩时，一小队由约翰·米勒中尉率领的美军士兵却深入敌区，冒着生命危险拯救一名士兵詹姆斯·瑞恩。詹姆斯·瑞恩是家中四兄弟的老幺，他的三名兄长都在这次战役中相继阵亡。美国作战总指挥部的将领为了不让这位不幸的母亲再承受丧子之痛，决定派一支特别小分队，将她仅存的儿子安全地救出战区。当小分队的士兵们陷入敌区，面对随时降临的各种危险，他们逐渐怀疑这项任务的合理性：为什么这个士兵，就值得让八名士兵去冒死拯救？瑞恩的一条命为何比他们的生命更有价值？但是，尽管他们心存疑惑，他们还是坚决执行上级的命令。

= 正文

== 正文子标题

=== 长文章对比用于调间距

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

== 规则

⑴理工类一般包括理论分析，总体方案设计及选择论证，设计计算，试验方案设计的可行性、有效性以及实验（试验）数据处理及分析，结果分析等。
⑵管理和人文类学科一般包括对研究问题的系统分析，比较研究，模型的建立，实验方案设计，案例论证或实证分析，模型运行的结果分析或建议、改进措施等。
⑶凡引用他人观点、方案、资料、数据等，无论曾否发表，无论是纸质或电子版，均应详加注释



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
      align: (x, y) => (left, center, center, right).at(x),
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

#v(-1em)
#box()

采用三线表(必要时可加辅助线,三线表无法清晰表达时可采用其他格式),即表的上、下边线为单直线,线粗为 1 pt;第三条线为单直线,
线粗为 0.5 pt。表单元格中的文字居中,采用五号宋体字,单倍行距,段前段后 0 行。

段前段后 0 行,1.5 倍行间距表格按章编号,表题在表格上方正中,表题宋体五号居中。表序和表名空一个汉字符宽度。

采用三线表(必要时可加辅助线,三线表无法清晰表达时可采用其他格式),即表的上、下边线为单直线,线粗为 1 pt;第三条线为单直线,
线粗为 0.5 pt。表单元格中的文字居中,采用五号宋体字,单倍行距,段前段后 0 行。


如果要使用符合规定的表，请参考以下代码。如果想知道如何合并表，请看thesis.typ位于顶端的链接。注意第一个rowspanx(2,align: center+horizon)是为了演示可以在这里面单独调整本单元格的参数，正常写不必再写第二遍（全局设置由align调整，如果要改成全局水平居中就写"align:center+horizon, "，center是居中，horizon是水平）。

hlinex里面只写stroke那一项就够了，打expand是为了好看。

引用示例@tbl:amns：
#align(center, (stack(dir: ltr)[
  #fig(
  tablex(
      columns: 4,
      align: (x, y) => (left+horizon, center+horizon, center+horizon, right+horizon).at(x),
      auto-lines: false,
      hlinex(stroke:1pt,expand:5pt,),
      rowspanx(2,align: center+horizon)[*Names*], hlinex(stroke:0.5pt),colspanx(2)[*Properties*], (), rowspanx(2)[*Creators*], (), [*Type*], [*Size*], (),
      hlinex(stroke:0.5pt,),
      [Machine], [Steel], [5 $"cm"^3$], [John p& Kate],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robe222rt],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Rodbert],
      hlinex(stroke:1pt,expand:5pt,),
    ),
    caption: [三线表],
  )<amns>
]))


#figure(
  image("nju-thesis/assets/vi/nju-emblem.svg", width: 20%),
  caption: [图片测试],
) <nju-logo>


== 数学公式

可以像 Markdown 一样写行内公式 $x + y$，以及带编号的行间公式：

$ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>

引用数学公式需要加上 `eqt:` 前缀，则由@eqt:ratio，我们有：

$ F_n = floor(1 / sqrt(5) phi.alt^n) $

#indent 图表和公式后的段落要用 `#indent` 手动缩进。同时，我们也可以通过 `<->` 标签来标识该行间公式不需要编号
或者自己加假段落。注意：代码下方的一行是必须要加的。
```typst
#v(-1em)
#box()

```
#v(-1em)
#box()



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

// 手动分页
#if (twoside) {
  pagebreak() + " "
}

// 正文结束标志，不可缺少
#mainmatter-end()


// 手动分页
#if (twoside) {
  pagebreak() + " "
}

// 参考文献
#bibliography(("bibs/ex01.bib", "bibs/ex02.bib"),
  style: "ieee"
)

#conclusion[
  男主角1900（人名）是一个被人遗弃在蒸气船上的孤儿，被船上一位好心的烧炉工收养，然而好人不得好报，烧炉工在一次意外中死亡，只有8岁大的1900又再度成为了孤儿。过人的天赋使他无师自通成了一名钢琴大师，但宿命也令他天然地对红尘俗世深怀戒意，他从不敢离船上岸去，只因纽约无际的高楼和川流不息的人群令他迷失自我。纵使后来遇上了一位一见钟情的少女，他思量再三后，还是放弃了上岸寻找初恋情人的冲动...
]


// 手动分页
#if (twoside) {
  pagebreak() + " "
}

// 致谢
#acknowledgement[
  感谢 NJU-LUG，感谢 NJUThesis LaTeX 模板。

  完成本篇论文之际，我要向许多人表达我的感激之情。

  首先，我要感谢我的指导教师，他/她对本文提供的宝贵建议和指导。所有这些支持和指导都是无私的，而且让我受益匪浅。

  其次，我还要感谢我的家人和朋友们，他们一直以来都是我的支持和鼓励者。他们从未停止鼓舞我，勉励我继续前行，感谢你们一直在我身边，给我幸福和力量。

  此外，我还要感谢我的同学们，大家一起度过了很长时间的学习时光，互相支持和鼓励，共同进步。因为有你们的支持，我才能不断地成长、进步。

  最后，我想感谢笔者各位，你们的阅读和评价对我非常重要，这也让我意识到了自己写作方面的不足，同时更加明白了自己的研究方向。谢谢大家！

  再次向所有支持和鼓励我的人表达我的谢意和感激之情。

  本致谢生成自 ChatGPT。
]

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

