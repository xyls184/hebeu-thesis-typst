#import "@preview/tablex:0.0.8": *
#import "style.typ": 字体, 字号
#import "@preview/t4t:0.3.2": *

#let table-stroke = 0.5pt

#set par(
  first-line-indent:1em
)

#align(center, text(
  font: 字体.黑体,
  size: 字号.小一,
  weight: "bold",
)[
  #v(3em)河北工程大学#v(0.8em)本科生毕业设计（论文）#v(0.8em)开题报告#v(8em)

  
])
#{
set text(font: 字体.宋体, size: 字号.小四)
align(center)[
  #tablex(
    columns: (6em, 18em),
    stroke: table-stroke,
    align: center + bottom,
    auto-lines: false,
    rows: 2.2em,
    [题#h(2em)目：],[ddddddd],
    hlinex(start:1,end:2),
    [学#h(2em)院：],[材料科学与工程学院],
    hlinex(start:1,end:2),
    [专业班级：],[],
    hlinex(start:1,end:2),
    [姓#h(2em)名：],[],
    hlinex(start:1,end:2),
    [学#h(2em)号：],[],
    hlinex(start:1,end:2),
    [指导教师：],[],
    hlinex(start:1,end:2),
    [填表时间：],[],
    hlinex(start:1,end:2),
  )
]
}

#set text(font: 字体.宋体, size: 字号.五号)
#set underline(offset: 0.1em)

//新页面
#pagebreak()


#{
  set text(size: 字号.小四)

  tablex(
    columns: (6em, 4em, 1fr, 5em, 1fr),
    stroke: table-stroke,
    align: center + horizon,
    auto-hlines: false,

    hlinex(),
    [题#h(1em)目], colspanx(4)[],

    hlinex(),
    [类#h(1em)型], colspanx(4,align:left+horizon)[ #sym.ballot.x 毕业设计 #h(3em)  #sym.ballot 毕业论文],

    hlinex(),
    rowspanx(2)[课题来源], colspanx(4,align:left+horizon,)[#sym.ballot 横向项目 #h(0.5em) #sym.ballot 纵向项目 #h(0.5em) #sym.ballot 模拟科研项目],
    (),colspanx(4,align:left+horizon)[#sym.ballot 实际工程项目 #h(0.5em) #sym.ballot 模拟实际工程项目 #h(0.5em) #sym.ballot 其他#underline[]\_\_\_\_\_\_\_\_\_ ],

    hlinex(),
    [课题性质], colspanx(4,align:left+horizon,)[#sym.ballot 基础研究 #h(0.5em) #sym.ballot 应用研究 #h(0.5em) #sym.ballot 应用基础研究 #h(0.5em) #sym.ballot 设计 #h(0.5em) #sym.ballot 其他#underline[]\_\_\_\_\_\_\_],

    hlinex(),
    [社会实践], colspanx(4,align:left+horizon,)[#sym.ballot 无 #h(0.5em) #sym.ballot 实验 #h(0.5em) #sym.ballot 实习 #h(0.5em) #sym.ballot 工程实践 #h(0.5em) #sym.ballot 社会调查],

    [情况], colspanx(4,align:left+horizon,)[#sym.ballot 其他实践#underline[]\_\_\_\_\_\_\_],

    hlinex(),
    [开题时间], colspanx(2,align:left+horizon,)[],[开题地点], [],

    hlinex(),
    colspanx(2,)[开题报告评议组成员],colspanx(3,align:left+horizon,)[],
    
    hlinex(),
  )
}


#v(-1.37em)

#{
  set text(size: 字号.小四)

  tablex(
    columns: (7%, 93%),
    stroke: table-stroke,
    align: (x, y) => (center+horizon,left + horizon).at(x),
    [摘要],[
      #set par(
        first-line-indent: 2em,
        leading: 1.07em,
      )

      #v(-1em)
      #box()

      新墨西哥州的高中化学老师沃尔特·H·怀特（布莱恩·科兰斯顿BryanCranston饰）是拮据家庭的唯一经济来源。他大半生安分守己，兢兢业业，却在50岁生日之际突然得知自己罹患肺癌晚期的噩耗，原本便不甚顺意的人生顿时雪上加霜。为了保障怀孕的妻子斯凯勒（安娜·冈AnnaGunn饰）和残疾的儿子小沃特能在自己死后衣食无忧，沃尔特决意铤而走险。他主动找到曾经的学生、而今的毒贩小混混杰西·平克曼（亚伦·保尔AaronPaul饰）谈合作，并运用娴熟高超的化学技术提炼出高纯度冰毒交给后者贩售。孰料事态的发展却在平克曼带回毒品供销商疯狂小八及其表弟后急转直下，沃尔特的人生也由此彻底步向失控。他被迫开始了教书与制毒的双重生活，逐渐坠落至万劫不复的深渊。

      炼金术，一种建立在等价交换原则基础上的科学，将物质进行理解、分解、再构造，将一种物品变成另外一种。但是，这样先进的技术却不能进行人体炼成，这是炼金术绝对的禁忌。可是，拥有极高炼金术天赋的爱德华（朴璐美 配音）和阿尔冯斯（钉宫理恵 配音）兄弟，因为对母亲极大的思念不惜触犯禁忌。而最终的代价却是，爱德华失去了一条手臂和一条腿，弟弟阿尔冯斯只能将灵魂依附在一副巨大的装甲之内。终于明白一切的兄弟俩，为了恢复原状，寻求更多的炼金术知识，成为国家炼金术师踏上了寻找终极炼金物品——贤者之石的旅程。在不断的探索中，两兄弟终于发现了贤者之石背后的真相，对身处的这个军事化国家也有了更深入的了解。此时，面对国家、民族、家庭……炼金术的未来究竟在何处。
    ]
    
  )
}

#v(-1.37em)

#{
  set text(size: 字号.小四)

  tablex(
    columns: (100%),
    stroke: table-stroke,
    align: (x, y) => left + horizon,
    [
      #set par(
        first-line-indent: 2em,
        leading: 1.07em,
      )

      #v(-1em)
      #box()

      == 一、选题意义
      #v(-1em)
      #box()

      热爱游戏的家里蹲少年·佐藤和真的人生，因交通事故而轻易闭幕……本该是这样，但当他醒来之时，眼前有一位自称是女神的美少女。“喂，我有点好事要告诉你。要去异世界吗？只带一样你喜欢的东西没问题喔。”“那，我就带着你好了。”由此开始，在异世界转生的和真的魔王讨伐大冒险开始了……虽然是这么想的，但他却为了获得衣食住行而开始劳动。想要平稳度日的和真，却由于女神引起的各种问题，而终于被魔王军盯上了……

      == 二、文献综述
      #v(-1em)
      #box()

      从南极到北极，从赤道到寒带，从非洲草原到热带雨林，再从荒凉峰顶到深邃大海，难以数计的生物以极其绝美的身姿呈现在世人面前。我们看到了Okavango洪水的涨落及其周边赖以生存的动物们的生存状态，看到了罕见的雪豹在漫天大雪中猎食的珍贵画面；看到了冰原上企鹅、北极熊、海豹等生物相互依存的严苛情景，也见识了生活在大洋深处火山口高温环境下的惊奇生物。当然还有地球各地的壮观美景与奇特地貌，无私地将其最为光艳的一面展现出来。


      == 三、设计任务（研究内容）
      #v(-1em)
      #box()

      英国广播公司 BBC 自 2010 年出品的迷你电视剧，该剧改编自阿瑟·柯南·道尔创作的侦探小说《福尔摩斯探案集》，将原著的时间背景从 19 世纪搬到了 21 世纪，讲述在繁华热闹的伦敦大都市中，时尚帅气、机敏犀利的大侦探夏洛克·福尔摩斯和他最忠实的搭档约翰·H·华生医生经受的一系列危险的、不同寻常的历险。改编遵循原著故事脉络，又辅以现代手法演绎，题目和细节之处却经过编剧精心的改良，熟悉之中又有几分新意。

      == 四、进度计划
      #v(-1em)
      #box()

      某个大陆的、某个时代。大陆南北分割的战争结束了，世界走向了和平。在战争中作为军人的薇尔莉特•伊芙加登，怀抱着对她来说无比重要之人留下的“话语”，离开军队来到了大港口城市。踊跃的人群在排列着煤气灯的街道马路上来来往往地穿梭着。薇尔莉特在街道上找到了“代写书信”的工作。那是根据委托人的想法来组织出相应语言的工作。她直面委托人、触碰着他们内心深处的坦率感情。与此同时，薇尔莉特在记录书信时，渐渐明白那“话语”的含义。

      == 五、参考文献（10篇以上，含2篇以上外文文献）
      #v(-1em)
      #box()

      写满了自己再建一个。
     

    ]
    
  )
}

#{
  set text(size: 字号.小四)

  tablex(
    columns: (16%, 84%),
    stroke: table-stroke,
    align: (x, y) => (center+horizon,left + horizon).at(x),
    [指导教师批阅意见],[
      #set par(
        first-line-indent: 2em,
        leading: 1.07em,
      )

      #v(-1em)
      #box()

      很久很久以前，曾流传着这样一个传说：世界各地散落着七颗龙珠，只要集齐这些珠子，就可召唤出神龙，而神龙可以帮助你实现任何一个愿望。住在深山中的小悟空本领高强，偶然的机会他随时尚少女布玛走出大山。

      #h(-2em)指导教师（签名）：#h(1fr)年#h(2em)月#h(2em)日
    ],
    [专业负责人审批意见], [
      #set par(
        first-line-indent: 2em,
        leading: 1.07em,
      )

      #v(-1em)
      #box()

      本节目以模拟演出的方式，分别以乘客、机师等不同人的视角，从事故发生前一段时间到事故发生、后续善后及调查为止，重现事件的整个过程。取材以事故调查报告及相关新闻报导为主；若因调查单位不公开报告以致无法取得事故调查报告时，则会征询相关专家的说法以拼凑出全貌。

      #h(-2em)专业负责人（签名）：#h(1fr)年#h(2em)月#h(2em)日
    ]
    
  )
}

+ 题目应是整个毕业设计（论文）内容的高度概括，一般控制在25字以内。
+ 字数要求：开题报告设计类1000字以上，论文类2000字以上；
+ 字体要求：小四号宋体，黑色，1.35倍行距；参考文献应选用近期公开出版的文献，格式按《河北工程大学毕业设计（论文）撰写规范》。
