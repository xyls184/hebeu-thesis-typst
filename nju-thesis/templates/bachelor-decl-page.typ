#import "@preview/t4t:0.3.2": is
#import "../utils/indent.typ": indent
#import "../utils/style.typ": 字号, 字体

// 本科生声明页
#let bachelor-decl-page(
  anonymous: false,
  twoside: false,
  fonts: (:),
  info: (:),
) = {
  // 0. 如果需要匿名则短路返回
  if anonymous {
    return
  }

  // 1.  默认参数
  fonts = 字体 + fonts
  info = (
    title: ("基于 Typst 的", "南京大学学位论文"),
  ) + info

  // 2.  对参数进行处理
  // 2.1 如果是字符串，则使用换行符将标题分隔为列表
  if (is.str(info.title)) {
    info.title = info.title.split("\n")
  }


  // 3.  正式渲染
  pagebreak(weak: true, to: if twoside { "odd" })

  // v(12pt)

  // align(center, image("../assets/vi/nju-emblem-purple.svg", width: 2.38cm))

  // v(20pt)

  align(
    center,
    text(
      font: fonts.黑体,
      size: 字号.小三,
      // weight: "bold",
      "学位论文原创性声明",
    ),
  )

  v(2em)

  [
    #set text(font: fonts.宋体, size: 字号.五号)
    #set par(justify: true, first-line-indent: 2em, leading: 1.26em)
    

    本人所提交的学位论文（题目：#info.title.sum()）是在导师的指导下，独立进行研究工作所取得的原创性成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的研究成果。对本文的研究做出重要贡献的个人和集体，均已在文中标明。
    
    本声明的法律后果由本人承担。

  ]
  v(4em)
  [
    #set text(font: fonts.宋体, size: 字号.五号)
    #set par(justify: true, first-line-indent: 0em, leading: 1.26em)
    #h(5em)论文作者（签名）：#h(9em)指导教师确认（签名）：

    #h(11em)年#h(2em)月#h(2em)日#h(13em)年#h(2em)月#h(2em)日
  ]
  v(6em)
  align(
    center,
    text(
      font: fonts.黑体,
      size: 字号.小三,
      // weight: "bold",
      "学位论文版权使用授权书",
    ),
  )
  v(2em)
  [
    #set text(font: fonts.宋体, size: 字号.五号)
    #set par(justify: true, first-line-indent: 2em, leading: 1.26em)
    

    本学位论文作者完全了解河北工程大学有权保留并向国家有关部门或机构送交学位论文的复印件和磁盘，允许论文被查阅和借阅。本人授权河北工程大学可以将学位论文的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或其它复制手段保存、汇编学位论文。
    
    保密的学位论文在\_\_\_\_\_\_\_\_年解密后适用本授权书。


  ]
  v(4em)
  [
    #set text(font: fonts.宋体, size: 字号.五号)
    #set par(justify: true, first-line-indent: 0em, leading: 1.26em)
    #h(5em)论文作者（签名）：#h(9em)指导教师确认（签名）：

    #h(11em)年#h(2em)月#h(2em)日#h(13em)年#h(2em)月#h(2em)日
  ]
 
}