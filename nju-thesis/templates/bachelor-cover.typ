#import "@preview/t4t:0.3.2": is
#import "../utils/custom-tablex.typ": gridx, colspanx
#import "../utils/datetime-display.typ": datetime-display
#import "../utils/style.typ": 字号, 字体

// 本科生封面
#let bachelor-cover(
  // documentclass 传入的参数
  anonymous: false,
  twoside: false,
  fonts: (:),
  info: (:),
  // 其他参数
  stoke-width: 0.5pt,
  min-title-lines: 2,
  info-inset: (x: 0pt, bottom: 1pt),
  info-key-width: 74pt,
  column-gutter: -8pt,
  row-gutter: 1pt,
  anonymous-info-keys: ("date2", "student-id", "author", "supervisor", "supervisor-ii"),
  bold-info-keys: ("title",),
  bold-level: "bold",
  datetime-display: datetime-display,
) = {
  // 1.  默认参数
  fonts = 字体 + fonts
  info = (
    title2: ("基于 Typst 的南京大学学位论文"),
    date2: "二零XX年X月X日",
    student-id: "1234567890",
    author: "张三",
    department: "某学院",
    major: "某专业",
    supervisor: ("李四", "教授"),
    submit-date: datetime.today(),
  ) + info

  // 2.  对参数进行处理
  // 2.1 如果是字符串，则使用换行符将标题分隔为列表
  if (is.str(info.title)) {
    info.title = info.title.split("\n")
  }
  // 2.2 根据 min-title-lines 填充标题
  info.title = info.title + range(min-title-lines - info.title.len()).map((it) => "　")
  // 2.3 处理提交日期
  if (is.type(datetime, info.submit-date)) {
    info.submit-date = datetime-display(info.submit-date)
  }

  // 3.  内置辅助函数
  let info-key(body) = {
    rect(
      width: 100%,
      inset: info-inset,
      stroke: none,
      text(font: fonts.楷体, size: 字号.三号, body),
    )
  }

  let info-value(key, body) = {
    set align(center)
    rect(
      width: 100%,
      inset: info-inset,
      stroke: (bottom: stoke-width + black),
      text(
        font: fonts.仿宋,
        size: 字号.三号,
        weight: if (key in bold-info-keys) { bold-level } else { "regular" },
        bottom-edge: "descender",
        body,
      ),
    )
  }

  let info-long-value(key, body) = {
    colspanx(3,
      info-value(
        key,
        if (anonymous and (key in anonymous-info-keys)) {
          "██████████"
        } else {
          body
        }
      )
    )
  }

  let info-short-value(key, body) = {
    info-value(
      key,
      if (anonymous and (key in anonymous-info-keys)) {
        "█████"
      } else {
        body
      }
    )
  }
  

  // 4.  正式渲染
  
  pagebreak(weak: true, to: if twoside { "odd" })

  // 居中对齐
  set align(center)

  // 匿名化处理去掉封面标识
  if (anonymous) {
    v(70pt)
  } else {
    // 封面图标
    v(88pt)
    image("../assets/vi/hebeulogo.jpg", width: 12.09cm)
    // v(22pt)
    // 调整一下左边的间距
    // pad(image("../assets/vi/nju-name.svg", width: 10.5cm), left: 0.4cm)
    // v(20pt)
  }
  v(-23pt)
  // 将中文之间的空格间隙从 0.25 em 调整到 0.5 em
  text(size: 字号.小初, font: fonts.黑体, spacing: 200%, )[毕业设计（论文）]
  
  if (anonymous) {
    v(132pt)
  } else {
    v(30pt)
  }

text(
    font: fonts.黑体,
    size: 字号.小一,
)[
    题目：#underline[#info.title2]
]

  // block(width: 40em, gridx(
  //   columns: (info-key-width, 1fr, info-key-width, 1fr),
  //   column-gutter: column-gutter,
  //   row-gutter: row-gutter,
  // info-key("题目"),
  // ..info.title.map((s) => info-long-value("title", s)).intersperse(info-key("　")),
  // ))
  v(26pt)
  
  block(width: 22em, gridx(
    columns: (info-key-width, 1fr, info-key-width, 1fr),
    column-gutter: column-gutter,
    row-gutter: row-gutter,

    info-key("姓　　名　"),
    info-long-value("author", info.author),
    info-key("学　　号　"),
    info-long-value("student-id", info.student-id),
    info-key("学　　院　"),
    info-long-value("department", info.department),
    info-key("专业班级　"),
    info-long-value("major", info.major),
    info-key("指导教师"),
    info-long-value("supervisor", info.supervisor.at(0)),
    ..(if info.supervisor-ii != () {(
      info-key("第二导师"),
      info-short-value("supervisor-ii", info.supervisor-ii.at(0)),
      info-key("职　　称"),
      info-short-value("supervisor-ii", info.supervisor-ii.at(1)),
    )} else {()}),
    // info-key("提交日期"),
    // info-long-value("submit-date", info.submit-date),
  ))
v(88pt)
  text(
    font: fonts.宋体,
    size: 字号.三号,
  )[
    #info.date2
]
}