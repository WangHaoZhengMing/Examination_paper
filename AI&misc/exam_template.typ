#set document(title: "[课程名称]期末试题")
#set heading(numbering: "一、")
#set text(font: "PingFang SC", lang: "zh")

// 填空题使用的横线
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}

// 代码块样式函数
#let coder(code) = block(
  width: 100%,
  inset: 1em,
  fill: rgb("#F6F8FA"),
  radius: 8pt,
)[#v(-8pt)
  #text(size: 24pt, weight: 900, fill: rgb("#FF5F56"), font: "SF Mono")[#sym.bullet]
  #text(size: 24pt, weight: 900, fill: rgb("#FFBD2E"), font: "SF Mono")[#sym.bullet]
  #text(size: 24pt, weight: 900, fill: rgb("#27C93F"), font: "SF Mono")[#sym.bullet]
  #v(-5pt)
  #text(size: 9pt, font: "SF Mono")[#code]
]



// 导入绘图包（如需要）
#import "@preview/cetz:0.3.4": *
#import "@preview/cetz-plot:0.1.1": *

// 页面设置
#set page(margin: 2cm, numbering: "1/1")

// 试卷头部
#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$[y e a r ]$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em, font: "Heiti SC")[[课程名称]]]

// 注意事项
#text(font: "Heiti SC")[注意事项]：
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答题卡上所粘贴的条形码上的姓名、准考证号与您本人是否相符。

= 选择题 (共[数量]题, 每题[分数]分, 共[总分]分)

#set enum(indent: 0.5cm, numbering: "1.")

+ 题目内容（四选一）
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 选项A], [B. 选项B], [C. 选项C], [D. 选项D],
  )

+ 题目内容
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 较长的选项内容较长的选项内容], [B. 较长的选项内容较长的选项内容],
    [C. 较长的选项内容较长的选项内容], [D. 较长的选项内容较长的选项内容],
  )

+ 题目内容（纵向排列选项）
  #grid(
    columns: 1,
    gutter: 10pt,
    [A. 很长的选项内容，需要单独一行显示],
    [B. 很长的选项内容，需要单独一行显示],
    [C. 很长的选项内容，需要单独一行显示],
    [D. 很长的选项内容，需要单独一行显示],
  )

= 填空题 (共[数量]题, 每题[分数]分, 共[总分]分)

+ 这是一个填空题，需要填入 #uline() 的内容。

+ 这是有多个空的填空题，第一空 #uline()，第二空 #uline(width: 6em)。

= 判断题 (共[数量]题, 每题[分数]分, 共[总分]分)

+ 这是一个判断题的陈述。（ #uline(width: 2em) ）

+ 另一个判断题的陈述。（ #uline(width: 2em) ）

= 简答题 (共[数量]题, 每题[分数]分, 共[总分]分)

+ 简答题题目

  _答题空间_

+ 另一个简答题题目

  _答题空间_

= 计算题 (共[数量]题, 每题[分数]分, 共[总分]分)

+ 计算题题目，包含数学公式：$x = (a + b) / (c + d)$

  _计算过程和答题空间_

= 编程题 (共[数量]题, 每题[分数]分, 共[总分]分)

+ 编程题目描述

  代码示例：
  #coder(```java
  public class Example {
      public static void main(String[] args) {
          // 你的代码
      }
  }
  ```)

#pagebreak()

// 参考答案部分
#align(center)[= 参考答案与解析]
#set heading(numbering: "1.1")
#set text(size: 8pt)

== 选择题
// 答案解析框 - 重新设计为高考风格
#let answer_block(num, answer, explanation, breakable: false, isbreakable: true) = {
  block(
    width: 100%,
    breakable: isbreakable,
    fill: rgb("#F8F9FA"),
    stroke: (left: 3pt + rgb("#007BFF")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 8pt),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      [#text(weight: "bold", fill: rgb("#007BFF"))[第#num 题]], [#text(weight: "bold")[答案：#answer]],
    )
    #text()[*解析：*#explanation]
  ]
  v(-5pt)
}


#figure()[#table(
    columns: 10, //按实际的来， 不一定是 10
    stroke: 0.5pt,
    align: center,
    [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7*], [*8*], [*9*], [*10*],
    [D], [B], [A], [C], [C], [C], [B], [B], [C], [B],
  )]
#answer_block(
  "1",
  [A],
)[本题考查基础概念。选项A正确是因为...，选项B错误是因为...，选项C错误是因为...，选项D错误是因为...]

#answer_block("2", [B])[本题考查综合分析能力。根据题意可知...，因此选择B。]

#answer_block("3", [C])[本题考查实际应用。通过分析可得...，故答案为C。]

== 填空题（答案要求准确）

#let fill_answer_block(num, answers, points: "", explanation) = {
  block(
    width: 100%,
    fill: rgb("#F0F8FF"),
    stroke: (left: 3pt + rgb("#28A745")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      [#text(weight: "bold", fill: rgb("#28A745"))[第#num 题]],
      [#text(weight: "bold")[答案：#answers] #if points != "" [#text(fill: gray)[(#points)]]],
    )
    #if explanation != "" [
      #text()[*解析：*#explanation]
    ]
  ]
  v(-5pt)
}

#fill_answer_block("1", [这是标准答案], points: "5分")[本题考查基础知识点，根据定义可知...]

#fill_answer_block("2", [第一空：答案1；第二空：答案2], points: "每空3分，共6分")[
  第一空考查...，第二空考查...]

== 判断题（正确打"✓"，错误打"×"）

#let judge_answer_block(num, answer, explanation) = {
  block(
    width: 100%,
    fill: rgb("#FFF8F0"),
    stroke: (left: 3pt + rgb("#FD7E14")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
  )[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      [#text(weight: "bold", fill: rgb("#FD7E14"))[第#num 题]], [#text(weight: "bold")[#answer]],
    )
    #text()[*解析：*#explanation]
  ]
  v(-5pt)
}

#judge_answer_block("1", [✓], [此说法正确。因为...])

#judge_answer_block("2", [×], [此说法错误。正确的理解应该是...])

== 简答题（要点明确，条理清晰）

#let essay_answer_block(num, answer, score: "") = {
  block(
    width: 100%,
    fill: rgb("#F0FFF0"),
    stroke: (left: 3pt + rgb("#20C997")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
  )[
    #text(weight: "bold", fill: rgb("#20C997"))[第#num 题答案] #if score != "" [#text(fill: gray)[(#score)]]

    #text()[
      #answer
    ]
  ]
  v(-5pt)
}

#essay_answer_block(
  "1",
  [this answer],
  score: "共10分",
)

== 计算题（步骤清晰，结果准确）

#let calc_answer_block(num, steps, final_answer, score: "") = {
  block(
    width: 100%,
    fill: rgb("#FFF0F5"),
    stroke: (left: 3pt + rgb("#E83E8C")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
  )[
    #text(weight: "bold", fill: rgb("#E83E8C"))[第#num 题解答过程] #if score != "" [#text(fill: gray)[(#score)]]

    #text()[
      #steps

      #text(weight: "bold")[答案：#final_answer]
    ]
  ]
  v(-6pt)
}

#calc_answer_block(
  "1",
  [
    //suppose that this is the 第一小问
    *解：* 根据题意，设...

    *步骤1：* 列出方程：$x = (a + b) / (c + d)$ ......（3分）
    #line(length: 100%)
    ////suppose that this is the 第一小问,we seperate them with a line
    *步骤2：* 代入数值计算：$x = ...$ ......（4分）

    *步骤3：* 化简得到最终结果 ......（2分）
  ],
  [$x = 5$],
  score: "共9分",
)

== 编程题（代码规范，逻辑正确）

#let code_answer_block(num, code, explanation: "", score: "") = {
  block(
    width: 100%,
    fill: rgb("#F8F9FA"),
    stroke: (left: 3pt + rgb("#6F42C1")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
  )[
    #text(weight: "bold", fill: rgb("#6F42C1"))[第#num 题参考代码] #if score != "" [#text(fill: gray)[(#score)]]

    #v(4pt)
    #coder(code)

    #if explanation != "" [
      #v(4pt)
      #text()[*评分要点：*#explanation]
    ]
  ]
  v(6pt)
}

#code_answer_block(
  "1",
  ```java
  public class Solution {
      public static void main(String[] args) {
          // 算法实现
          System.out.println("Hello World");
      }
  }
  ```,
  explanation: [代码正确性5分，算法效率3分，代码规范2分。],
  score: "共10分",
)

