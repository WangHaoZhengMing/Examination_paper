#let question_counter = counter("question")
#import "@preview/cetz:0.3.1": *
#import "@preview/cetz-plot:0.1.0": *

// 颜色定义
#let primary_blue = rgb("#1E88E5")
#let light_blue = rgb("#E3F2FD")
#let primary_green = rgb("#43A047")
#let light_green = rgb("#E8F5E9")
#let primary_orange = rgb("#FB8C00")
#let light_orange = rgb("#FFF3E0")
#let light_gray = rgb("#F5F5F7")
#let dark_gray = rgb("#424242")
#let divider_color = rgb("#E0E0E0")

// 页面设置
#set page(
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
  header: context {
    let current = counter(page).at(here())
    if current != 1 {
      line(length: 100%, stroke: divider_color)
      h(1em)
      text(dark_gray)[高中物理习题集]
    }
  },
)

// 文本设置
#set text(
  font: ("SF-Symbols", "PingFang SC"),
  size: 10.5pt,
  fill: dark_gray,
  spacing: 130%,
)

// 标题设置
#show heading: it => {
  if it.level == 1 {
    question_counter.update(1)
    text(
      size: 16pt,
      weight: "bold",
      it.body,
    )
    // v(0.5em)
  } else if it.level == 2 {
    section_counter.step()
    text(
      size: 14pt,
      weight: "bold",
      it.body,
    )
    v(0.3em)
  } else if it.level == 3 {
    text(
      size: 12pt,
      weight: "bold",
      it.body,
    )
    v(0.2em)
  }
}

// 题目框
#let question_box(content) = {
  block(
    width: 100%,
    inset: (x: 1em, y: 0.8em),
    fill: light_gray,
    radius: 6pt,
    context {
      question_counter.step()
      [
        #text(weight: "bold")[#question_counter.at(here()).first(). ]
        #content
      ]
    },
  )
  // v(0.8em)
}

// 解析框
#let solution_box(content) = {
  // block(
  //   width: 100%,
  //   inset: (x: 1em, y: 0.8em),
  //   fill: light_blue,
  //   radius: 6pt,
  //   [
  text(weight: "bold", fill: primary_blue)[解析]
  v(0.3em)
  content
  //   ],
  // )
  v(0.8em)
}

// 知识点框
#let knowledge_box(content) = {
  block(
    width: 100%,
    inset: (x: 1em, y: 0.8em),
    fill: light_green,
    radius: 6pt,
    [
      #text(weight: "bold", fill: primary_green)[知识点]
      #v(0.3em)
      #content
    ],
  )
  v(0.8em)
}

// 公式框
#let formula_box(content) = {
  block(
    width: 100%,
    inset: (x: 1em, y: 0.8em),
    fill: light_orange,
    radius: 6pt,
    [
      #text(weight: "bold", fill: primary_orange)[重要公式]
      #v(0.2em)
      #content
    ],
  )
  v(0.8em)
}

