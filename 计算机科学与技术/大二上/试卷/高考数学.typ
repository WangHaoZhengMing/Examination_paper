#import "@preview/cuti:0.2.1": show-cn-fakebold
#set text(size: 12pt, font: ("New Computer Modern", "Songti SC"), lang: "zh")
#show: show-cn-fakebold
#set page(margin: 2cm)
#set par(justify: true, leading: 1em)
#set block(above: 1.2em)
#let fakepar = context {
  box()
  v(-measure(block() + block()).height)
}
// #show heading: it => it + fakepar
#set math.mat(delim: "[")
#show heading.where(level: 1): set align(center)
#show heading.where(level: 2): set text(size: 12pt)

#let quiz(body1, body2, cols: 4) = {
  counter("quiz").step() // 直接让计数器递增
  let choices = body2.children.filter(e => e.func() == list.item)
  grid(
    columns: (1.6em, auto),
    context { counter("quiz").display("1.") }, // 使用 context 显示题号
    {
      body1
      parbreak()
      if cols == 4 {
        for (i, e) in choices.enumerate() {
          box(
            width: 25%,
            {
              numbering("A. ", i + 1)
              e.body
            },
          )
        }
        parbreak()
      } else if cols == 2 {
        for (i, e) in choices.enumerate() {
          box(
            width: 50%,
            {
              numbering("A. ", i + 1)
              e.body
            },
          )
          if calc.rem(i, 2) == 1 {
            parbreak()
          }
        }
        parbreak()
      } else if cols == 1 {
        for (i, e) in choices.enumerate() {
          numbering("A. ", i + 1)
          e.body
          parbreak()
        }
      }
    },
  )
  v(0.6cm)
}
#let quiz2(body) = {
  counter("quiz").step()
  grid(
    columns: (1.6em, auto),
    context { counter("quiz").display("1.") }, // 使用 context
    body,
  )
  v(0.6cm)
}
#let quiz3(body1, body2) = {
  counter("quiz").step()
  grid(
    columns: (1.6em, auto),
    context { counter("quiz").display("1.") }, // 使用 context
    body1,
  )
  {
    set par(first-line-indent: 1.6em)
    body2
  }
}
#let ubox(width) = box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))
#let ident() = h(1.6em)

#set page(footer: align(center)[数学试题#counter(page).display("第 1 页（共 1 页）",both: true)])

//----------------------------------------------------------------------------------
#align(left)[#text(font:"Heiti SC")[绝密★启用前]]
#align(center,text(15pt)[#text(font:"Songti SC")[$2017$ 年普通高等学校招生全国统一考试]])
#align(center)[#text(size: 1.8em,font: "Heiti SC")[理科数学]]
#text(font:"Heiti SC")[注意事项]：

#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
//----------------------------------------------------------------------------------
== 一、选择题：本题共8小题，每小题5分，共40分。在每小题给出的四个选项中，只有一项是符合题目要求的。

#quiz[已知集合 $A={x |-5<x^3<5}$，$B={-3,-1,0,2,3}$，则 $A sect B=$][
  - ${-1,0}$
  - ${2,3}$
  - ${-3,-1,0}$
  - ${-1,0,2}$
]

#quiz[若 $display(z/(z-1))=1+i$，则 $z$][
  - $-1-i$
  - $-1+i$
  - $1-i$
  - $1+i$
]

#quiz[已知向量 $bold(a)=(0,1)$，$bold(b)=(2,x)$，若 $bold(b) perp (bold(b) -4 bold(a))$，则 $x=$][
  - $-2$
  - $-1$
  - $1$
  - $2$
]

#quiz[已知 $cos(alpha + beta)=m$，$tan alpha tan beta =2$，则$cos(alpha - beta)=$ ][
  - $-3m$
  - $- display(m/3)$
  - $display(m/3)$
  - $3m$
]

#quiz[已知圆柱和圆锥的底面半径相等，侧面积相等，且它们的高均为 $sqrt(3)$，则圆锥的体积为][
  - $2 sqrt(3) pi$
  - $3 sqrt(3) pi$
  - $6 sqrt(3) pi$
  - $9 sqrt(3) pi$
]

#quiz[已知函数 $f(x)= display(cases(
  -x^2 -2 a x-a "," #h(1em) &x<0,
  e^x+ ln(x+1) ","&x gt.eq.slant 0
))$ ， 在 $RR$ 上单调递增，则 $a$ 的取值范围是][
  - $(-oo,0]$
  - $[-1,0]$
  - $[-1,1]$
  - $[0,+oo)$
]
#quiz[当 $x in [0,2 pi]$ 时，曲线 $y=sin x$与 $y=2 sin (3x- display(pi/6)) $ 的交点个数为][
  - $3$
  - $4$
  - $6$
  - $8$
]
#quiz[已知函数 $f(x)$ 的定义域为 $RR$，$f(x)>f(x-1)+f(x-2)$，且当 $x<3$时，$f(x)=x$，则下列结论中一定正确的是][
  - $f(10)>100$
  - $f(20)>1" "000$
  - $f(10)<1" "000$
  - $f(20)<10" "000$
]

#quiz(cols: 2)[为了解推动出口后的亩收入（单位：万元）情况，从该种植区抽取样本，得到推动出口后亩收入的样本均值 $overline(x) =2.1$， 样本方差 $s^2=0.01$，已知该种植区以往的亩收入 $X$ 服从正态分布 $N(1.8, 0.1^2)$，假设推动出口后的亩收入 $Y$ 服从正态分布 $N(overline(x),s^2)$，则（若随机变量 $Z$ 服从正态分布 $N( mu,sigma^2)$，则 $P(Z< mu+sigma) approx 0.841" "3$）][
  - $P(X>2)>0.2$
  - $P(X>2)<0.5$
  - $P(Y>2)>0.5$
  - $P(Y>2)<0.8$
]

#quiz(cols: 2)[设函数 $f(x)= (x-1)^2 (x-4)$，则][
  - $x=3$ 是 $f(x)$ 的极小值点
  - 当 $0<x<1$ 时，$f(x)<f(x^2)$
  - 当 $1<x<2$ 时，$-4<f(2x-1)<0$
  - 当 $-1<x<0$ 时， $f(2-x)>f(x)$
]

#grid(
  columns: (75%, 25%),
  quiz(cols: 1)[造型 “, height: 0.8em)”可以做成美丽的丝带，将其看作图中曲线 $C$ 的一部分．已知 $C$ 过坐标原点 $O$，且 $C$ 上的点满足横坐标大于 $-2$，到点 $F(2,0)$ 的距离与到定直线 $x=a$ $(a < 0)$ 的距离之积为 $4$，则][
    - $a=-2$
    - 点 $(2 sqrt(2),0)$ 在 $C$ 上
    - $C$ 在第一象限的点的纵坐标的最大值为 $1$
    - 当点 $(x_0,y_0)$ 在 $C$ 上时， $y_0 lt.eq.slant display(4/(x_0+2))$
  ],

)

== 三、填空题：本题共3小题，每小题5分，共15分。
\
#quiz2[设双曲线 $display(x^2/a^2 - y^2/b^2)=1$（$a>0,b>0$）的左、右焦点分别为 $F_1$，$F_2$，过 $F_2$ 作平行于 $y$ 轴的直线交 $C$ 于 $A$、$B$ 两点，若 $|F_1 A|=13$，$|A B|=10$ 则 $C$的离心率为 #ubox(3em).]

#quiz2[若曲线 $y= e^x+ x$ 在点 $(0,1)$ 处的切线也是曲线 $y=ln(x+1)+a$ 的切线，则 $a=$ #ubox(3em).]

#quiz2[甲乙两人各有四张卡片，每张卡片上标有一个数字，甲的卡片上分别标有数字 $1$，$3$，$5$，$7$，乙的卡片上分别标有数字 $2$，$4$，$6$，$8$．两人进行四轮比赛，在每轮比赛中，两人
  各自从自己持有的卡片中随机选一张，并比较所选卡片上的数字大小，数字大的人得 $1$ 分，数字小的人得 $0$ 分，然后各自弃置此轮所选的卡片（弃置的卡片在此后的轮次中不能使用），则四轮比赛后，甲的总得分不小于 $2$ 的概率为 #ubox(3em).
]

// #pagebreak()

== 四、解答题：本题共5小题，共77分。解答应写出文字说明、证明过程或演算步骤。

#quiz3[（13分）][
  #ident()设 $triangle.stroked.t A B C$ 的内角 $A$，$B$，$C$ 的对边分别为 $a$， $b$， $c$，已知 $sin C = sqrt(2) cos B, a^2 +b^2-c^2 = sqrt(2) a b$

  （1）求 $B$；

  （2）若 $triangle.stroked.t A B C$ 的面积为 $3 + sqrt(3)$，求 $c$.
]

#v(7em)

#quiz3[（15分）][
  已知 $A(0,3)$ 和 $display(P(3,3/2))$ 为椭圆 $display(x^2/a^2 + y^2/b^2)=1$ 上两点.

  （1）求 $C$ 的离心率；

  （2）若过 $P$ 的直线 $l$ 交 $C$ 于另一点 $B$，且 $triangle.stroked.t A B P$ 的面积为 $9$，求 $l$ 的方程.
]

#v(7em)

#grid(
  columns: (80%, 20%),
  quiz3[（15分）][
    #ident()如图，四棱锥 $P$--$A B C D$中， $P A perp $ 底面 $A B C D$， $P A=A C=2$， $B C=1$， $A B=sqrt(3)$．

    （1）若 $A D perp P B$，证明：$A D parallel$ 平面 $P B C$；

    （2）若 $A D perp D C$，且二面角 $A$--$C P$--$D$ 的正弦值为 $display(sqrt(42)/7)$，求 $A D$.
  ],
  // image("2024-China-Gaokao-Math/20240608-1.jpg"),
)

#pagebreak()

#quiz3[（17分）][
  已知函数 $f(x)= ln display(x/(2-x)) + a x+b (x-1)^3$．

  （1）若 $b=0$，且 $f'(x) gt.slant 0$，求 $a$ 的最小值；

  （2）证明：曲线 $y=f(x)$ 是中心对称图形；

  （3）若 $f(x)>-2$ 当且仅当 $1<x<2$，求 $b$ 的取值范围．
]

#v(7em)

#quiz3[（17分）][
  #ident()设 $m$ 为正整数，数列 $a_1$，$a_2$，$dot.c dot.c dot.c$，$a_(4m+2)$ 是公差不为 $0$ 的等差数列，若从中删去两项 $a_i$ 和 $a_j$ $(i<j)$ 后剩余的 $4m$ 项可被平均分为 $m$ 组，且每组的 $4$ 个数都能构成等差数列，则称数列 $a_1$，$a_2$，$dot.c dot.c dot.c$，$a_(4m+2)$ 是 $(i, j)$--可分数列．

  （1）写出所有的 $(i,j)$，$1 lt.eq.slant i<j lt.eq.slant 6$，使得数列 $a_1$，$a_2$，$dot.c dot.c dot.c$，$a_(6)$ 是 $(i,j)$--可分数列；

  （2）当 $m gt.slant 3$ 时，证明：数列 $a_1$，$a_2$，$dot.c dot.c dot.c$，$a_(4m+2)$ 是 $(2,13)$--可分数列；

  （3）从 $1$，$2$，$dot.c dot.c dot.c$，$4m+2$ 中一次任取两个数 $i$ 和 $j$ $(i<j)$，记数列 $a_1$，$a_2$，$dot.c dot.c dot.c$，$a_(4m+2)$ 是 $(i,j)$--可分数列的概率为 $P_m$，证明：$P_m > display(1/8)$．
]