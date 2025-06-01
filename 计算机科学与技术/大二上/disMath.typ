#import "@preview/cetz:0.3.4": *
#import "@preview/cetz-plot:0.1.0": *
#set heading(numbering: "1.")
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
// 题目计数器
#let question_counter = counter("question")
#question_counter.step(level: 1)
#let show_solutions = true // 改为 true 显示解答
#let show_spaceFor = false
// #set page(columns: 2)





#let section_divider() = {
  if show_solutions {
    v(1em)
    line(length: 100%, stroke: rgb("#D1D1D6"))
    v(1em)
  }
}

// 页面设置
#set page(
  margin: (x: 2cm, y: 1cm),
  numbering: "1",
  header: context {
    let current = counter(page).at(here())
    if current != 1 {
      // line(length: 100%, stroke: divider_color)
      // h(1em)
      // text(dark_gray)[王浩然--离散数学练习题]
    }
  },
)

// 文本设置
#set text(
  font: "pingfang sc",
  size: 10.5pt,
  // fill: dark_gray,
  // spacing: 130%,
  lang: "zh",
)

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
}

// 解析框
#let solution_box(content) = {
  if show_solutions {
    text(weight: "bold", fill: primary_blue)[解析]
    v(0.3em)
    content
    v(0.8em)
  }

  if show_spaceFor {
    text(weight: "bold", fill: primary_blue)[解答]
    v(15em)
  }
}

// 知识点框
#let knowledge_box(content) = {
  if show_solutions {
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
}

// 公式框
#let formula_box(content) = {
  if show_solutions {
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
}

= 集合、命题、谓词、推理

#question_box[
  *集合论应用*

  某班有25个学生，其中14人会打篮球，12人会打排球，6人会打篮球和排球，5人会打篮球和网球，还有2人会打这三种球。已知6个会打网球的人都会打篮球或排球。求三种球都不会打的人数。
]
#solution_box[
  令 $B$ 表示会打篮球的学生集合，$V$ 表示会打排球的学生集合，$T$ 表示会打网球的学生集合。
  已知：
  - 总学生数 = 25
  - 会打篮球的人数 $abs(B) = 14$
  - 会打排球的人数 $abs(V) = 12$
  - 会打篮球和排球的人数 $abs(B sect V) = 6$
  - 会打篮球和网球的人数 $abs(B sect T) = 5$
  - 会打三种球的人数 $abs(B sect V sect T) = 2$
  - 会打网球的人数 $abs(T) = 6$
  - 所有会打网球的人都会打篮球或排球，即 $T subset (B union V)$

  要求不会打任何球的人数，即：总人数 - 至少会打一种球的人数 $ 25 - abs(B union V union T) $

  使用容斥原理计算 $ abs(B union V union T)$：
  $
    abs(B union V union T) = abs(B) + abs(V) + abs(T) - abs(B sect V) - abs(B sect T) - abs(V sect T) + abs(B sect V sect T)
  $

  需要求出 $abs(V sect T)$。因为 $T subset (B union V)$，所以：
  $ T = T sect (B union V) = (T sect B) union (T sect V) $
  因此：$ abs(T) = abs((T sect B) union (T sect V))\ = abs(T sect B) + abs(V sect T) - abs(T sect B sect V) $
  代入已知值：
  $6 = 5 + abs(V sect T) - 2$

  解得：$abs(V sect T) = 3$

  现在可以计算 $abs(B union V union T)$：
  $ abs(B union V union T) = 14 + 12 + 6 - 6 - 5 - 3 + 2 = 20 $

  所以不会打任何球的人数为：$25 - 20 = 5$（人）

  答：有5人三种球都不会打。
]
#section_divider()

#question_box[
  *永真式判定*：$P arrow (P or Q or R)$ 是永真的吗？
]
#solution_box[
  1. 当 $P$ 为真时：
    - $P$ 为真，则 $P or Q or R$ 必定为真（因为析取式中只要有一个为真，整个式子就为真）
    - 所以 $P arrow (P or Q or R)$ 为真

  2. 当 $P$ 为假时：
    - 根据蕴含式的定义，前件为假时，整个蕴含式为真。这是因为：
      蕴含式 $P arrow Q$ 的本质是"如果P，那么Q"
      当P为假时，"如果P"这个条件根本没有发生，此时无论Q是真是假，都不会违背这个"如果...那么..."的承诺
      举个例子："如果今天下雨，我就带伞"。当今天没下雨时，无论我带不带伞，这个承诺都是成立的
    - 所以 $P arrow (P or Q or R)$ 为真

  *结论*：无论 $P$、$Q$、$R$ 取何值，该命题永远为真，即为永真式。
]
#section_divider()

#question_box[
  *永真式判定*：判断以下命题是否为永真式：

  (1) $(P arrow Q) arrow (not Q arrow not P)$

  (2) $((P or Q) and not (not P and (not Q or not R))) or (not P and not Q) or (not P and not R)$

  (3) $not (not Q or not R) or not (Q arrow R)$]

#knowledge_box[
  我们有下面的我不知道的重要等值公式：
  $ not (P arrow Q) = P and not Q $
  // $ not (P or Q) = not P and not Q $
  // $ not (P and Q) = not P or not Q $
]
#solution_box[
  + 这是逆否命题，是永真式。证明如下：
    - $(P arrow Q)$ 等价于 $(not P or Q)$
    - $(not Q arrow not P)$ 等价于 $(Q or not P)$
    - 两式等价，因此原命题为永真式

  + 我们可以通过真值表验证：
    - 先化简 $not (not P and (not Q or not R))$
    - $P or (Q and R)$ (德摩根定律)
    - 原式变为：$((P or Q) and (P or (Q and R))) or (not P and not Q) or (not P and not R)$
    通过真值表验证，这是永真式

  + 化简：
    - $not (not Q or not R) = Q and R$ (德摩根定律)
    - $not (Q arrow R) = Q and not R$
    - 原式 = $(Q and R) or (Q and not R)$
    - = $Q and (R or not R)$
    - = $Q and T$
    - = $Q$
    因此不是永真式
]
#section_divider()


#question_box[
  用谓词和量词，将下列命题符号化。\
  （1）每个人的外祖母都是他母亲的母亲。\
  （2）任何自然数的后继数必大于零。\
  （3）有些液体能溶解任何金属。\
  （4）任何金属均可溶解于某种液体之中。\
]
#knowledge_box[
  谓词的几个重要原则：
  一元谓词：描述某个对象的性质
  例如：
  - H(x): x是人
  - T(x): x是老师
  - R(x): x是红色的
  二元谓词：描述两个对象之间的关系
  例如：
  - L(x,y): x爱y
  - M(x,y): x是y的母亲
  - G(x,y): x大于y

  在逻辑学中，"谓词"（predicate）是用来表示对象的性质、属性或它与其他对象关系的表达式。\
  • P(x) 表示"x 具有性质 P"。\
  • R(x, y) 表示"x 与 y 之间存在某种关系 R"。

  这里的"谓"指的是对对象或变量所"断言"的内容。因为它描述了对象的状态或性质，起到"说明"或"陈述"的作用，所以称之为"谓词"。
]
#solution_box[
  1. 设H(x)：x是人；G(x,y)：x是y的外祖母; M(x,y)：x是y的母亲。那么该命题可符号化为
  $ forall x forall y ( H(x)∧H(y)∧G(x,y)-> exists ( H(z)∧M(x,z)∧M(z,y) ) ) $
  2. 设N(x): x是自然数； G(x，y): x 大于y
  $ forall x(N(x) -> G(x+1，0))。 $
  3. 设A(x)：x 是液体；G(y)是金属；H(x,y)：x可以溶解y
  $ exists x(A(x) and forall Y(G(y) -> H(x,y))) $
  4. 设A(x)：x 是液体；G(y)是金属；H(x,y)：x可以溶解y
]
#section_divider()


#question_box[
  *推理题*：找出凶手

  *命题定义*：
  #table(
    columns: (auto, auto),
    stroke: none,
    column-gutter: 1em,
    [- $p$:], ["清洁工谋害了经理"],
    [- $q$:], ["秘书谋害了经理"],
    [- $r$:], ["谋害发生在午夜前"],
    [- $s$:], ["秘书的证词是正确的"],
    [- $m$:], ["午夜的灯光灭了"],
  )

  *已知前提*：
  #table(
    columns: auto,
    stroke: none,
    [1. $m$ (午夜的灯光确实灭了)],
    [2. $not s arrow not m$ (如果秘书的证词不正确，那么午夜的灯光就不会灭)],
    [3. $s arrow r$ (如果秘书的证词正确，那么谋害发生在午夜前)],
    [4. $p arrow not r$ (如果清洁工是凶手，那么谋害不是发生在午夜前)],
    [5. $p or q$ (凶手要么是清洁工，要么是秘书)]
  )
]

#solution_box[
  推导过程：

  由 $m$ 和 $not s arrow not m$，可以得到：
  $ m arrow s，"因此" s "为真" $

  由 $s arrow r$ 和 $s$ 为真，可以得到：
  $ r "为真" $

  由 $p arrow not r$ 和 $r$ 为真，可以得到：
  $ r arrow not p\ therefore p "为假" $

  由 $p or q$ 和 $p$ 为假，可以得到：
  $ q "为真" $

  因此，凶手是秘书。
]

#section_divider()

#question_box[
  张三说李四在说谎，李四说王五在说谎，王五说张三、李四都在说谎。问张三、李四、王五3个人到底谁在说真话，谁在说假话。
]

#solution_box[
  设:
  - $x$: 张三说真话
  - $y$: 李四说真话
  - $z$: 王五说真话

  将三人的话转化为命题公式：
  #pad(left: 2em)[
    1. 张三说李四在说谎：$x arrow not y$
    2. 李四说王五在说谎：$y arrow not z$
    3. 王五说张三、李四都在说谎：$z arrow (not x and not y)$
  ]

  分析过程：
  #pad(left: 2em)[
    1. 假设 $x$ 为真，则：
      - 则 $y: F, z: T$。这个前后不符，不成立

    2. 假设 $x$ 为假，则：
      可以看出李四为真，王五为假成立
  ]
]

#section_divider()

#question_box[
  符号化下列论断，并用演绎法验证论断是否正确。

  （1）或者明天下午天晴，或者下雨；如果明天下午天晴，则我将去看电影；如果我去看电影，我就不看书。所以如果明天下午我看书，则天在下雨。

  （2）若明天下午气温超过30℃，则我们就去游泳；若我们去游泳，则我们就不去图书馆。所以若明天下午我们去图书馆，则气温必须超过了30℃。
]

#solution_box[
  (1) 符号化：
  设：
  $p$: 明天下午天晴
  $q$: 明天下午下雨
  $r$: 我去看电影
  $s$: 我看书

  前提：
  - $p or q$
  - $p arrow r$
  - $r arrow not s$

  结论：$s arrow q$

  演绎推理过程：
  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    [
      #pad(left: 2em)[
        1. 假设 $s$ (附加前提)
        2. $r arrow not s$ (前提)
        3. $s arrow not r$ (由2，逆否)
        4. $not r$ (由1,3和假言推理)
        5. $not p$ (由4,5和假言推理)
      ]
    ],
    [
      #pad(left: 2em)[
        6. $p arrow r$ (前提)
        7. $p or q$ (前提)
        8. $q$ (由6,7和析取三段论)
        9. $s arrow q$ (由1-8和条件证明)
      ]
    ],
  )

  因此该论断正确。

  (2) 符号化：
  设：
  $p$: 明天下午气温超过30℃
  $q$: 我们去游泳
  $r$: 我们去图书馆

  前提：
  - $p arrow q$
  - $q arrow not r$

  结论：$r arrow p$

  演绎推理过程：
  #grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    [
      #pad(left: 2em)[
        1. 假设 $r$ (附加前提)
        2. $q arrow not r$ (前提)
        3. $r arrow not q$ (由2，逆否)
        4. $not q$ (由1,3和假言推理)
      ]
    ],
    [
      #pad(left: 2em)[
        5. $p arrow q$ (前提)
        6. $not p$ (由4,5和假言推理的逆否)
        7. $r arrow not p$ (由1-6和条件证明)
      ]
    ],
  )
  该论断不正确。实际上我们证明了相反的结论：如果我们去图书馆，则气温一定不超过30℃。
]



#section_divider()
#question_box[
  *命题逻辑推理*\

  已知：
  $j:"甲去"\
    y:"乙去"\
    b:"丙去"\
    d:"丁去"$

  符号化: $ A= (j or b) and (j arrow not y) and (b arrow d) $
]

#solution_box[
  *主析取范式求解:*

  #pad(left: 2em)[
    已知乙去，即 $y$ 为真。

    代入 $A$ 式中：
    $ A = (j or b) and (j arrow F) and (b arrow d) $
    $ = (j or b) and (not j) and (b arrow d) $
    $ = (j or b) and (not j) and (not b or d) $
    $ = ((j and not j) or (b and not j)) and (not b or d) $
    $ = (F or (b and not j)) and (not b or d) $
    $ = (b and not j) and (not b or d) $
    $ = (b and not j and not b) or (b and not j and d) $
    $ = F or (b and not j and d) $
    $ = b and not j and d $

    因此只有一种方案：丙去、甲不去、丁去。
  ]

  *自然推理证明:*

  由题意知，$ y"为真" $
  得到：
  $ A = (j or T) and (j arrow F) and (b arrow d) $
  现在的条件是：
  $j and b | j arrow not y | b arrow d$

  $because y,y arrow not j\
    therefore not j\
    because j or b \ // 由 j or y 和 not j 可得 j and b
    therefore b\ // 由 j and b 可得 b
    because b arrow d\
    therefore d$

  因此证明了若乙去，则丁必去。
]

#section_divider()


#question_box[
  *谓词逻辑推理*

  令 $A(x):x$是学术委员会成员\
  $B(x):x$是教授\
  $C(x):x$是博士\
  $D(x):x$是青年

  前提：$forall x (A(x)and B(x) and C(x) ) $，$exists x(A(x)and D(x))$

  结论：$exists x(A(x) and C(x) and D(x))$
]

#solution_box[
  在自然推理系统中证明上面的结论：

  #table(
    columns: (auto, auto, auto),
    // inset: 6pt,
    align: (center, horizon, horizon),
    [*序号*], [*推理步骤*], [*说明*],
    [1], [$exists x(A(x)and D(x))$], [题目给的前提条件],
    [2], [设 $a$ 满足 $A(a)and D(a)$], [由于第1行是存在量词,我们可假设存在一具体的元素$a$满足这个条件],
    [3], [$forall x (A(x)and B(x) and C(x))$], [题目给的另一个前提条件],
    [4], [$A(a)and B(a) and C(a)$], [把第3行的全称量词具体到元素$a$上],
    [5], [$A(a)$], [从第2行的合取式中取出第一部分],
    [6], [$D(a)$], [从第2行的合取式中取出第二部分],
    [7], [$C(a)$], [从第4行的合取式中取出第三部分],
    [8], [$A(a) and C(a) and D(a)$], [把第5,7,6行的结果合并成一个合取式],
    [9], [$exists x(A(x) and C(x) and D(x))$], [由于我们证明了存在元素$a$满足这个性质,所以可以引入存在量词],
  )
]
#section_divider()



#question_box[
  将下列公式用极小联结词的完备集{$not$, $and$}等价表示。

  (1) $P arrow (not Q arrow.l.r P)$

  (2) $(not P arrow R) arrow.l.r (P and Q)$
]
#knowledge_box[
  我们有下面的重要等值公式：
  // - $P arrow Q = not P or Q = not (P and not Q)$
  - $P arrow.l.r Q = (P arrow Q) and (Q arrow P) = not (P and not Q) and not (Q and not P)$
]
#solution_box[
  (1) 逐步化简：
  - $P arrow (not Q arrow.l.r P)$
  - $= not P or (not Q arrow.l.r P)$
  - $= not P or (not (not Q and not P) and not (P and Q))$
  - $= not P or ((Q or P) and not (P and Q))$
  - $= not P or ((Q or P) and (not P or not Q))$
  - 最终结果：$not (P and (not ((Q or P) and (not P or not Q))))$

  (2) 逐步化简：
  - $(not P arrow R) arrow.l.r (P and Q)$
  - $= (not (not P and not R)) arrow.l.r (P and Q)$
  - $= (P or R) arrow.l.r (P and Q)$
  - $= not ((P or R) and not (P and Q)) and not ((P and Q) and not (P or R))$
  - 最终结果：$not ((P or R) and (not P or not Q)) and not ((P and Q) and (not P and not R))$
]
#section_divider()
// #pagebreak()
#question_box[
  用演绎法证明下述论断的正确性。

  (1) 前提：$C or D$，$(C or D) arrow not P$，$not P arrow (A and not B)$，$(A and not B) arrow (R or S)$；结论：$R or S$。

  (2) 前提：$P or Q$，$Q arrow R$，$P arrow M$，$not M$；结论：$R and (P or Q)$。

  (3) 前提：$P$，$P arrow (Q arrow (R and S))$；结论：$Q arrow S$。
]
#knowledge_box[
  *常用推理规则*：
  #table(
    columns: (auto, auto),
    stroke: none,
    column-gutter: 1em,
    [*合取消去*:], [从 $P and Q$ 可以推出 $P$ 或 $Q$],
    [*假言推理*:], [从 $P$ 和 $P arrow Q$ 可以推出 $Q$],
    [*反证法*:], [若从假设 $P$ 可以推出矛盾，则可以推出 $not P$],
    [*析取三段论*:], [从 $P or Q$ 和 $not P$ 可以推出 $Q$],
    [*合取引入*:], [从 $P$ 和 $Q$ 可以推出 $P and Q$],
    [*条件证明*:], [若从假设 $P$ 可以推出 $Q$，则可以推出 $P arrow Q$],
  )
]
#solution_box[
  (1) 演绎推理过程：
  #pad(left: 2em)[
    1. $C or D$ (前提)
    2. $(C or D) arrow not P$ (前提)
    3. $not P arrow (A and not B)$ (前提)
    4. $(A and not B) arrow (R or S)$ (前提)
    5. $not P$ (由1,2和假言推理)
    6. $A and not B$ (由3,5和假言推理)
    7. $R or S$ (由4,6和假言推理)
  ]

  (2) 演绎推理过程：
  #pad(left: 2em)[
    1. $P or Q$ (前提)
    2. $Q arrow R$ (前提)
    3. $P arrow M$ (前提)
    4. $not M$ (前提)
    5. $not P$ (由3,4和 `反证法`)
    6. $Q$ (由1,5和析取三段论)
    7. $R$ (由2,6和假言推理)
    8. $R and (P or Q)$ (由1,7和合取引入)
  ]

  (3) 演绎推理过程：
  #pad(left: 2em)[
    1. $P$ (前提)
    2. $P arrow (Q arrow (R and S))$ (前提)
    3. $Q arrow (R and S)$ (由1,2和假言推理)
    4. 假设 $Q$ (附加前提)
    5. $R and S$ (由3,4和假言推理)
    6. $S$ (由5和合取消去)
    7. $Q arrow S$ (由4-6和条件证明)
  ]
]


#section_divider()

#question_box[
  某公司要从赵、钱、孙、李、周5名新毕业的大学生中选派一些人出国学习。选派必须满足以下条件，用主析取范式分析该公司如何选派他们出国。\
  （1）若赵去，钱也去。\
  （2）李、周两个人至少有一个人去。\
  （3）钱、孙两个人有一个人去，且仅有一个人去。\
  （4）孙、李二人同去，或者同不去。\
  （5）若周去，则赵、钱也去。
]

#solution_box[
  设:
  $z$: 赵去
  $q$: 钱去
  $s$: 孙去
  $l$: 李去
  $w$: 周去

  将条件转化为命题公式：

  (1) $z arrow q$ = $not z or q$
  (2) $l or w$
  (3) $(q and not s) or (s and not q)$
  (4) $(s and l) or (not s and not l)$
  (5) $w arrow (z and q)$ = $not w or (z and q)$


  将所有条件合取：

  $
    A = (not z or q) and (l or w) and ((q and not s) or (s and not q)) and ((s and l) or (not s and not l)) and (not w or (z and q))
  $

  求主析取范式的步骤：
  #pad(left: 2em)[
    1. 先考虑 $w$ 的取值：
      - 若 $w=T$，则 $z=T$ 且 $q=T$
      - 若 $w=F$，则 $l$ 必须为 $T$（由条件2）

    2. 考虑 $q$ 和 $s$ 的关系：
      - 必须有且仅有一个为真（由条件3）
      - 若 $s=T$，则 $l=T$（由条件4）
      - 若 $s=F$，则 $l=F$ 或 $l=T$

    3. 代入所有可能的取值组合，检验是否满足所有条件：

    最终得到主析取范式：
    $(z and q and not s and l and w) or (not z and q and not s and l and not w)$
  ]

  因此有两种选派方案：
  方案1：赵、钱、李、周去，孙不去 | 方案2：钱、李去，赵、孙、周不去
]

#knowledge_box[
  *几种常见的范式：*

  合取（and）和析取（or）的命名方式：
  - 合取：多个条件"都要"满足，就像"合"在一起，所以叫"合取"
  - 析取：多个条件"分开"来看，只要满足一个就行，所以叫"析取"

  *合取范式*：由析取式的合取构成的范式，形如：$(P_1 or P_2) and (P_3 or P_4) and ...$

  *析取范式*：由合取式的析取构成的范式，形如：$(P_1 and P_2) or (P_3 and P_4) or ...$

  *主析取范式*：
  - 也称为最小项之和
  - 由最小项的析取构成
  - 形如：$m_1 or m_2 or ... or m_k$，其中 $m_i$ 是最小项

  *主合取范式*：
  - 也称为最大项之积
  - 由最大项的合取构成
  - 形如：$M_1 and M_2 and ... and M_k$，其中 $M_i$ 是最大项

  // *注*：任何命题公式都可以化为主析取范式或主合取范式，且这种形式是唯一的。
]
#section_divider()
#question_box[
  求下列公式对应的主合取范式和主析取范式，并指出哪些是永真式，哪些是永假式。

  (1) $not((P and Q) or R) arrow R$

  (2) $(not P or not Q) arrow (P arrow.l.r not Q)$

  (3) $Q and (P or not Q)$

]
#solution_box[
  (1) 主合取范式：($and$)
  $ not((P and Q) or R) arrow R $
  化简为：
  $ not(not((P and Q) or R)) or R $
  $ = ((P and Q) or R) or R $
  列出真值表：
  #table(
    columns: (auto, auto, auto, auto),
    stroke: 0.7pt,
    align: center,
    [P], [Q], [R], [$not((P and Q) or R) arrow R$],
    [T], [T], [T], [T],
    [T], [T], [F], [F],
    [T], [F], [T], [T],
    [T], [F], [F], [F],
    [F], [T], [T], [T],
    [F], [T], [F], [F],
    [F], [F], [T], [T],
    [F], [F], [F], [F],
  )
  写出主合取范式：
  $ (P or Q or R) and (P or not Q or R) and (not P or Q or R) and (not P or not Q or R) $
  (2) 主析取范式：($or$)

  写出主析取范式：

  // ---------
  将给定的逻辑表达式 $(not p and not q) or (p and r)$ 化为主合取范式的过程如下：

  1. #text(weight: "bold")[应用分配律： $ a or (b and c) = (a or b) and (a or c)$]

  令
  $ a = (not p and not q)，b = p，c = r $
  原表达式变为：
  $ ((not p and not q) or p) and ((not p and not q) or r) $

  2. #text(weight: "bold")[再次应用分配律： $(a and b) or c = (a or c) and (b or c)$]

    对于第一个括号：
  $ (not p and not q) or p = (not p or p) and (not q or p) $
  对于第二个括号：
  $ (not p and not q) or r = (not p or r) and (not q or r) $

  3. #text(weight: "bold")[简化包含永真式的项]

  $(not p or p)$ 是一个永真式，其值为 "True" (或 1)。

  所以第一个括号简化为：
  $ ("True") and (p or not q) = (p or not q) $

  4. #text(weight: "bold")[合并结果]
    将简化后的两部分合并：
  $ (p or not q) and (not p or r) and (not q or r) $
  5. 然后再补全最小项即可。
]

= 图与群
#question_box[用离散数学的知识来写这个题目
  今有赵、钱、孙、李、周五位老师，要承担语文、数学、物理、化学、英语五门课程。已知赵老师熟悉数学、物理、化学三门课程，钱老师熟悉语文、数学、物理、英语四门课程，孙、李、周三人都只熟悉数学和物理两门课程。问能否安排他们五人每人只上一门自己熟悉的课程，使得每门课程都有人教。说明理由。]
#solution_box[
  构建二分图:\
  我们将五位老师和五门课程分别作为二分图的两部分节点集合。
  #figure(
    canvas({
      import draw: *
      scale(0.755)
      // 左侧学生节点
      let students = ("赵", "钱", "孙", "李", "周")
      // 右侧科目节点
      let subjects = ("数学", "物理", "化学", "语文", "英语")

      // 绘制左侧学生节点
      for (i, student) in students.enumerate() {
        circle((0, -i * 2), radius: 0.3, fill: white, stroke: black)
        content((0, -i * 2), student)
      }

      // 绘制右侧科目节点
      for (i, subject) in subjects.enumerate() {
        circle((6, -i * 2), radius: 0.45, fill: white, stroke: black)
        content((6, -i * 2), subject)
      }

      // circle((0.3, 0),radius:0.3)

      // 绘制连线
      line((0.3, 0), (5.7, 0)) // 赵-数学
      line((0.3, 0), (5.7, -2)) // 赵-物理
      line((0.3, 0), (5.7, -4)) // 赵-化学

      line((0.3, -2), (5.7, -6)) // 钱-语文
      line((0.3, -2), (5.7, 0)) // 钱-数学
      line((0.3, -2), (5.7, -2)) // 钱-物理
      line((0.3, -2), (5.7, -8)) // 钱-英语

      line((0.3, -4), (5.7, 0)) // 孙-数学
      line((0.3, -4), (5.7, -2)) // 孙-物理

      line((0.3, -6), (5.7, 0)) // 李-数学
      line((0.3, -6), (5.7, -2)) // 李-物理

      line((0.3, -8), (5.7, 0)) // 周-数学
      line((0.3, -8), (5.7, -2)) // 周-物理
    }),
    caption: "学生-科目关系图",
  )
  题目问能否安排每位老师教一门自己熟悉的课程，并且每门课程都有人教。这等价于在构建的二分图中寻找一个完美匹配，即一个包含所有节点的匹配。
  #knowledge_box[*霍尔定理 (Hall's Theorem):*

    判断二分图是否存在完美匹配的充要条件。对于左侧节点集合的任意子集 $X$，设 $N(X)$ 为 $X$ 中节点的邻居集合（右侧节点集合中与 $X$ 中至少一个节点相邻的节点集合）。二分图存在完美匹配的充要条件是：对于左侧节点集合的任意子集 $X$，都有 $|X| <= |N(X)|$。

    *直观地说*：霍尔定理告诉我们：如果想要每个左侧节点都能找到一个右侧节点匹配（即每位老师都能分配到一门课程），那么对于任意一组老师，他们合起来会教的课程数量必须大于等于这组老师的人数。

    例如，如果我们选择任意3位老师，他们合起来至少要会教3门不同的课程，否则这3位老师就不可能都被分配到课程。这个条件必须对任意数量的老师都成立。

    // 反过来说，如果这个条件满足了（即任意k位老师合起来至少会教k门课程），那么一定存在一种分配方案，使得每位老师都能教一门自己会教的课程。
  ]
  让我们检查一下这个条件是否成立：

  $|X| = 1$: 例如 $X = {"赵"}$，$N(X) = {"数学","物理","化学"}$，$|X| <= |N(X)|$

  $|X| = 2$: 例如 $X = {"孙","李"}$，$N(X) = {"数学","物理"}$，$|X| = |N(X)|$。其他两两组合情况类似。

  $|X| = 3$: 例如 $X = {"孙","李","周"}$，$N(X) = {"数学","物理"}$，$|X| > |N(X)|$。 不满足霍尔定理。

]
#section_divider()


#question_box[
  *方案设计*：论文答辩时间安排

  有6名学生要进行论文答辩，答辩小组分别是：
  - $A_1 = {张 老 师, 李 老 师, 王 老 师}$
  - $A_2 = {孙 老 师, 赵 老 师, 刘 老 师}$
  - $A_3 = {张 老 师, 刘 老 师, 王 老 师}$
  - $A_4 = {赵 老 师, 刘 老 师, 王 老 师}$
  - $A_5 = {张 老 师, 李 老 师, 孙 老 师}$
  - $A_6 = {李 老 师, 刘 老 师, 王 老 师}$

  那么，这次论文答辩至少必须安排在多少个不同的时间段举行？
]

#solution_box[
  这个问题可以转化为图着色问题。

  1. *构建图：* 我们将6名学生视为图的6个顶点，如果两个学生需要由相同的老师答辩，则在这两个顶点之间连一条边。换句话说，如果两个学生的答辩小组有交集，则他们之间连边。

  2. *确定边的连接关系：*

  #figure(
    caption: "学生答辩关系图",
    canvas({
      import draw: *
      scale(0.8)

      // 定义顶点位置
      let vertices = (
        ((0, 0), "A1"),
        ((2, 0), "A2"),
        ((3, 2), "A3"),
        ((2, 4), "A4"),
        ((0, 4), "A5"),
        ((1, 2), "A6"),
      )

      // 画边
      line((0, 0), (3, 2)) // A1-A3
      line((0, 0), (0, 4)) // A1-A5
      line((0, 0), (1, 2)) // A1-A6
      line((2, 0), (2, 4)) // A2-A4
      line((2, 0), (0, 4)) // A2-A5
      line((2, 0), (1, 2)) // A2-A6
      line((3, 2), (2, 4)) // A3-A4
      line((3, 2), (1, 2)) // A3-A6
      line((2, 4), (1, 2)) // A4-A6
      line((0, 4), (1, 2)) // A5-A6

      // 画顶点和标签
      for ((x, y), label) in vertices {
        circle((x, y), radius: 0.4, fill: white, stroke: black)
        content((x, y), label)
      }
    }),
  )

  3. *图着色：* 我们需要用最少的颜色给图的顶点着色，使得相邻的顶点颜色不同。颜色代表不同的时间段。

  我们可以用以下方法进行着色：
  #figure()[
    #table(
      columns: (auto, auto, auto, auto, auto, auto, auto),
      stroke: gray,
      align: center,
      [学生], [A1], [A2], [A3], [A4], [A5], [A6],
      [颜色], [颜色1], [颜色2], [颜色2], [颜色3], [颜色3], [颜色4],
    )
  ]
  因此，至少需要4种不同的颜色，也就是4个不同的时间段。

  4. *证明最少需要4个时间段：*

  学生1、学生5和学生6两两之间都有边相连，构成了一个三角形。三角形需要至少三种颜色着色。

  学生2和学生4之间有边相连。学生2与学生1、5、6相连；学生4与学生1、3、6相连。观察发现，学生2和学生4不能使用颜色1、2或3，因此必须使用第四种颜色。

  因此，至少需要4个不同的时间段才能安排所有学生的答辩。

  最终答案：至少需要 *4* 个不同的时间段。
]
#section_divider()




#question_box[设$A={1,2,3,4}，B={0,1,4,9,12}$，R是A到B上的关系，试分别写出满足下列条件的关系R，并用关系图和关系矩阵表示。]


// （2）<x,y>∈R当且仅当x≡y (mod 3)。
// （3）<x,y>∈R当且仅当x≤y。

#solution_box[
  (1）$< x,y > in R$ 当且仅当 $x|y$ ($x$ 整除 $y$)

  关系 $R = {(1,0), (1,1), (1,4), (1,9), (1,12), (2,0), (2,4), (2,12), (3,0), (3,9), (3,12), (4,0), (4,4), (4,12)}$

  关系图:
  #figure(
    canvas(
      debug: false,
      {
        import draw: *
        scale(1)
        // // 绘制坐标轴和刻度
        line((0, -1), (0, 9), stroke: gray + 0.5pt, mark: (end: ">")) // y轴
        line((-1, 0), (7, 0), stroke: gray + 0.5pt, mark: (end: ">")) // x轴
        content((7.3, 0), "x", fill: gray)
        content((0, 9.3), "y", fill: gray)
        for i in range(7) {
          line((i, -0.1), (i, 0.1), stroke: gray + 0.5pt)
          if i > 0 { content((i, -0.5), str(i), fill: gray) }
        }
        for i in range(9) {
          line((-0.1, i), (0.1, i), stroke: gray + 0.5pt)
          if i > 0 { content((-0.5, i), str(i), fill: gray) }
        }

        // 左侧A集合的节点坐标
        let a_nodes = ((0, 0), (0, 2), (0, 4), (0, 6))
        let a_labels = ("1", "2", "3", "4")

        // 右侧B集合的节点坐标
        let b_nodes = ((6, 0), (6, 2), (6, 4), (6, 6), (6, 8))
        let b_labels = ("0", "1", "4", "9", "12")

        // 绘制关系连线 - 根据整除关系连接节点
        // 1整除所有数 - 蓝色
        line(a_nodes.at(0), b_nodes.at(0), stroke: primary_blue) // 1|0
        line(a_nodes.at(0), b_nodes.at(1), stroke: primary_blue) // 1|1
        line(a_nodes.at(0), b_nodes.at(2), stroke: primary_blue) // 1|4
        line(a_nodes.at(0), b_nodes.at(3), stroke: primary_blue) // 1|9
        line(a_nodes.at(0), b_nodes.at(4), stroke: primary_blue) // 1|12

        // 2整除0,4,12 - 绿色
        line(a_nodes.at(1), b_nodes.at(0), stroke: primary_green) // 2|0
        line(a_nodes.at(1), b_nodes.at(2), stroke: primary_green) // 2|4
        line(a_nodes.at(1), b_nodes.at(4), stroke: primary_green) // 2|12

        // 3整除0,9,12 - 橙色
        line(a_nodes.at(2), b_nodes.at(0), stroke: primary_orange) // 3|0
        line(a_nodes.at(2), b_nodes.at(3), stroke: primary_orange) // 3|9
        line(a_nodes.at(2), b_nodes.at(4), stroke: primary_orange) // 3|12

        // 4整除0,4,12 - 灰色
        line(a_nodes.at(3), b_nodes.at(0), stroke: dark_gray) // 4|0
        line(a_nodes.at(3), b_nodes.at(2), stroke: dark_gray) // 4|4
        line(a_nodes.at(3), b_nodes.at(4), stroke: dark_gray) // 4|12

        // 使用循环绘制所有节点和标签
        for (i, pos) in a_nodes.enumerate() {
          circle(pos, radius: 0.3, fill: white, stroke: black)
          content(pos, a_labels.at(i))
        }

        // 绘制B集合节点和标签
        for (i, pos) in b_nodes.enumerate() {
          circle(pos, radius: 0.3, fill: white, stroke: black)
          content(pos, b_labels.at(i))
        }
      },
    ),
    caption: "关系R的关系图",
  )

  关系矩阵: A 的元素作为行，B 的元素作为列。

  ```
      0  1  4  9 12
  1   1  1  1  1  1
  2   1  0  1  0  1
  3   1  0  0  1  1
  4   1  0  1  0  1
  ```


  (2）$< x,y >∈R "当且仅当" x ≡ y (mod 3$) (x 与 y 模 3 同余)\
  略
]
#section_divider()
#question_box[
  设A={a,b,c}，B={1,2}，A到B上的关系R和S定义如下：
  $R={<a,1>,<b,2>,<c,1>}，S={<a,1>,<b,1>,<c,1>}$
  则 $R^c 、S^c$ 怎么算
]
#solution_box[
  $R^c$ 表示 R 的补集。 因为 R 是 A 到 B 的关系，R 的补集 Rᶜ 也是 A 到 B 的关系，包含所有不在 R 中的 A 和 B 的元素对。

  A = {a, b, c}，B = {1, 2}，因此 A × B (A 到 B 的所有可能的关系) 为：


  因此，R 的补集 $ (A × B) - R  = { <a,2>, <b,1>, <c,2> }$。

  *另外*:空关系同时具有：反自反性、反对称性、对称性、传递性
]
#section_divider()

// 设A={a,b,c,d}，A上的等价关系R如下：R={<a,a>,<b,b>,<c,c>,<d,d>,<a,b>,<b,a>,<c,d>,<d,c>}。
#question_box[
  *图论应用*

  已知有 $a,b,c,d,e$ 五个点组成图，邻接矩阵为：
  $mat(
    0, 0, 0, 0, 1;
    1, 0, 1, 1, 0;
    0, 0, 0, 0, 0;
    0, 0, 1, 0, 1;
    0, 1, 0, 1, 0
  )$
  则从 $a$ 到 $d$ 的距离为 2 和 3 的通路各有几条？
]
#solution_box[
  邻接矩阵 $M$ 表示图中顶点之间的直接连接关系。从顶点 $i$ 到顶点 $j$ 长度为 $k$ 的通路数量等于矩阵 $M^k$ 中第 $i$ 行第 $j$ 列的元素。这里，顶点 $a$ 对应第1行，顶点 $d$ 对应第4列。

  *长度为2的通路*：
  计算 $M^2$：
  $M^2 = mat(
    0, 1, 0, 1, 0;
    0, 0, 1, 0, 2;
    0, 0, 0, 0, 0;
    0, 1, 0, 1, 0;
    1, 0, 2, 1, 1
  )$

  $M^2$ 的 $(1,4)$ 元素为1，说明长度为2的通路有1条。这条通路是：$a arrow e arrow d$。

  *长度为3的通路*：
  计算 $M^3$：
  $M^3 = mat(
    1, 0, 2, 1, 1;
    0, 2, 0, 2, 0;
    0, 0, 0, 0, 0;
    1, 1, 2, 2, 1;
    0, 1, 1, 1, 2
  )$

  $M^3$ 的 $(1,4)$ 元素为1，说明长度为3的通路有1条。这条通路是：$a arrow e arrow b arrow d$。

  答：从 $a$ 到 $d$ 的距离为2的通路有1条，距离为3的通路有1条。
]
#section_divider()

#question_box[
  设集合$A=｛a,b,c,d,e,f,g,h｝$，对应的哈斯图如下图所示。令$B_1=｛a，d｝，B_2=｛c,d,e｝$。求出 $B_1$ 和 $B_2$ 的最大元、最小元、极大元、极小元、上界、下界、上确界、下确界。
  #figure(
    caption: "",
    canvas({
      import draw: *

      // Set scale for better visibility
      scale(0.8)

      // Draw vertices
      let vertices = (
        ("a", (-1, 0)),
        ("b", (1, 0)),
        ("c", (-0, 1)),
        ("d", (-1, 2)),
        ("e", (1, 2)),
        ("f", (-1, 3)),
        ("g", (1, 3)),
        ("h", (0, 4)),
      )

      // Draw edges
      line((-1, 0), (0, 1)) // a to c
      line((1, 0), (0, 1)) // b to c
      line((0, 1), (-1, 2)) // c to d
      line((0, 1), (1, 2)) // c to e
      line((-1, 2), (-1, 3)) // d to f
      line((1, 2), (1, 3)) // e to g
      line((-1, 3), (0, 4)) // f to h
      line((1, 3), (0, 4)) // g to h

      // Add vertex labels
      for (label, (x, y)) in vertices {
        circle((x, y), radius: 0.05, fill: white)
        content((x - 0.2, y), label)
        
      }
    }),
  )


]
#solution_box[
  #box(stroke: gray, height: 1.2em, radius: 0.2em)[
    $B_1 = {a, d}$:]

  #table(
    columns: (auto, auto),
    align: left,
    [最大元], [$B_1$ 中没有一个元素大于等于其他所有元素，所以 $B_1$ 没有最大元],
    [最小元], [$B_1$ 中没有一个元素小于等于其他所有元素，所以 $B_1$ 没有最小元],
    [极大元], [$a$ 和 $d$ 都是 $B_1$ 的极大元，因为在 $B_1$ 中没有比它们更大的元素],
    [极小元], [$a$ 和 $d$ 都是 $B_1$ 的极小元，因为在 $B_1$ 中没有比它们更小的元素],
    [上界], [$f$ 和 $h$ 是 $B_1$ 的上界],
    [下界], [$B_1$ 没有下界],
    [上确界], [$f$ 是 $B_1$ 的上确界],
    [下确界], [$B_1$ 没有下确界，因为它没有下界],
  )

  #box(stroke: gray, height: 1.2em, radius: 0.2em)[
    $B_2 = {c,d,e}$:
  ]

  #table(
    columns: (auto, auto),
    inset: 4.1pt,
    // inset: 10pt,
    // stroke: none,
    align: left,
    [最大元], [$B_2$ 中没有一个元素大于等于其他所有元素，所以 $B_2$ 没有最大元],
    [最小元], [$c$ 是 $B_2$ 的最小元，因为 $c <= d$ 且 $c <= e$],
    [极大元], [$d$ 和 $e$ 都是 $B_2$ 的极大元，因为 $B_2$ 中没有比它们更大的元素],
    [极小元], [$c$ 是 $B_2$ 的极小元，因为 $B_2$ 中没有比它更小的元素],
    [上界], [$f$、$g$、$h$ 都是 $B_2$ 的上界],
    [下界], [$a$ 和 $b$ 都是 $B_2$ 的下界，因为 $a <= c$，$b <= c$],
    [上确界], [$B_2$ 没有上确界],
    [下确界], [$c$ 是 $B_2$ 的下确界],
  )
]
#section_divider()

#question_box[
  *关系闭包*：给出一个关系R，如何求它的自反闭包、对称闭包和传递闭包？
]
#if show_spaceFor {
  text(weight: "bold", fill: primary_blue)[解答]
  v(15em)
}
#knowledge_box[
  设关系R是集合A上的二元关系。

  *自反闭包*：
  - 定义：自反闭包是包含R的最小自反关系，记作$r(R)$
  - 构造方法：
    1. 保留R中的所有有序对
    2. 加入所有形如$(a,a)$的有序对，其中$a in A$

  *对称闭包*：
  - 定义：对称闭包是包含R的最小对称关系，记作$s(R)$
  - 构造方法：
    1. 保留R中的所有有序对
    2. 对于R中的每个有序对$(a,b)$，如果$(b,a)$不在R中，则加入$(b,a)$

  *传递闭包*：
  - 定义：传递闭包是包含R的最小传递关系，记作$t(R)$
  - 构造方法：
    1. 保留R中所有有序对
    2. 如果存在$(a,b)$和$(b,c)$，则加入$(a,c)$
    3. 重复步骤2，直到不能再加入新的有序对
]

#formula_box[
  *示例*：
  若 $A = {1,2,3}$，$R = {(1,2), (2,3)}$
  则：
  - $r(R) = R union {(1,1), (2,2), (3,3)} = {(1,1), (1,2), (2,2), (2,3), (3,3)}$
  - $s(R) = R union {(2,1), (3,2)} = {(1,2), (2,1), (2,3), (3,2)}$
  - $t(R) = R union {(1,3)} = {(1,2), (2,3), (1,3)}$
]
#section_divider()

#question_box[
  设 $p,q,r in RR$ (实数集)，$*$ 是 $RR$ 上的二元运算，对 $forall a,b in RR$，$a * b = p a + q b + r$，问：当 $p,q,r$ 满足什么条件时，此运算在 $RR$ 上\
  （1）满足交换律；\
  （2）满足结合律；\
  （3）具有单位元，此时哪些元素可逆？\
  （4）具有零元。
]
#solution_box[
  设 $p, q, r in RR$，$*$ 是 $RR$ 上的二元运算，对 $forall a, b in RR$，$a * b = p a + q b + r$。
]
#section_divider()

#question_box[
  图的最小生成树由图中的实线组成。求下图的割集系统
  #figure(
    canvas(
      debug: false,
      {
        import draw: *
        scale(1)
        // 绘制坐标轴和刻度
        // line((0,-1), (0,4), stroke: gray + 0.5pt, mark: (end: ">")) // y轴
        // line((-1,0), (7,0), stroke: gray + 0.5pt, mark: (end: ">")) // x轴
        // content((7.3,0), "x", fill: gray)
        // content((0,4.3), "y", fill: gray)
        // for i in range(7) {
        //   line((i,-0.1), (i,0.1), stroke: gray + 0.5pt)
        //   if i > 0 { content((i,-0.5), str(i), fill: gray) }
        // }
        // for i in range(4) {
        //   line((-0.1,i), (0.1,i), stroke: gray + 0.5pt)
        //   if i > 0 { content((-0.5,i), str(i), fill: gray) }
        // }


        // Define points as array of coordinates
        let points = ((1, 0), (0, 1), (1, 2), (3, 0), (4, 1), (3, 2))

        // Draw lines first
        line((1, 0), (0, 1), stroke: black)
        content((0.3, 0.3), "b")
        line((0, 1), (1, 2), (3, 0), (4, 1), stroke: (dash: "dashed"))
        content((2, 1.2), "g")
        content((3.7, 0.3), "d")
        content((0.5, 1.2), "j")
        line((1, 2), (3, 2), (4, 1))
        content((2, 2.2), "h")
        content((3.7, 1.4), "e")
        line((1, 2), (1, 0), (3, 0), stroke: (dash: "dashed"))
        content((2, 0.2), "c")
        line((3, 2), (3, 0))
        content((3.2, 1), "f")
        content((1.2, 1), "i")
        // Draw 弯曲的线 from (0,1) to (4,1)
        line((0, 1), (1, 3), (3, 3), (4, 1))
        content((2, 3.2), "a")
        for pt in points {
          circle(pt, radius: 0.07, fill: white, stroke: black)
        }
      },
    ),
    // caption: "关系R的关系图",
  )
]
#solution_box[
  割集系统是可以把一个图划分为若干个部分的的系统。

  由图可知本题的最小生成树有 ${b,a,e,h,f}$ 共 5 条边。

  那我们的割集系统就由这几个边分别构成：

  a 的割集系统：${a,j,i,c}$

  b 的割集系统：${b,i,c}$

  e 的割集系统：${e,d}$

  h 的割集系统：${h,i,i,g}$

  f 的割集系统：${f,c,g,d}$
]
#section_divider()

#figure(
  canvas(
    debug: false,
    {
      import draw: *
      scale(1)
      // // 绘制坐标轴和刻度
      line((0, -1), (0, 9), stroke: gray + 0.5pt, mark: (end: ">")) // y轴
      line((-1, 0), (7, 0), stroke: gray + 0.5pt, mark: (end: ">")) // x轴
      content((7.3, 0), "x", fill: gray)
      content((0, 9.3), "y", fill: gray)
      for i in range(7) {
        line((i, -0.1), (i, 0.1), stroke: gray + 0.5pt)
        if i > 0 { content((i, -0.5), str(i), fill: gray) }
      }
      for i in range(9) {
        line((-0.1, i), (0.1, i), stroke: gray + 0.5pt)
        if i > 0 { content((-0.5, i), str(i), fill: gray) }
      }
    },
  ),
)
