#set document(title: "2024-2025年《概率论与数理统计》期末试题")
#set heading(numbering: "一、")
// #show math.equation.where(block: false): math.display
#set text(font:"PingFang SC")
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}

#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$2024-2025$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em, font: "Heiti SC")[概率论与数理统计]]
#text(font:"Heiti SC")[注意事项]：

#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
= 填空题 (共10题, 每空3分, 共30分)
+ 设随机事件 $A, B, C$ 相互独立, 且 $P(A)=1/2$, $P(B)=1/3$, $P(C)=1/4$, 则 $A, B, C$ 至少有一个事件发生 的概率为 #uline().

+ 已知随机变量 $X, Y$ 相互独立, 且 $P{X^2 + Y^2 = 0} = 3/4$, 其联合分布律和边缘分布律如表. 则 $(F)$ 处的值为 #uline().
  #figure(
    table(
      columns: 3,
      stroke: .5pt + black,
      align: center + horizon,
      [*X|Y*], [0 1], [$P(Y=y_j)$],
      [0\ 1], [(A) (B)\ (D) (E)], [(C) \ (F)],
      [$P_(x y)$], [$4/5$ (G)], [],
    ),
    caption: [分布表],
  )

+ 随机变量 $X$ 服从正态分布 $N(1, 4)$, 则 $P(X=1) =$ #uline().

+ 设样本 $X_1, dots, X_n$ 来自总体 $X$, $X tilde B(m, p)$, $overline(X)$ 为样本均值, 则 $D(overline(X)) = $ #uline().

+ 将 3 个球随机的放入 3 个盒子中去, 每个盒子恰有一球的概率是 #uline().

+ 设 $P(A)=0.3, P(B)=0.4, P(A|B) = 0.6$, 则 $P(A union B) =$ #uline().

+ 设两个相互独立的随机变量 $X, Y$ 分别服从参数 $lambda$ 为 2, 3 的指数分布, 则 $D(2X - 3Y + 1) =$ #uline().

+ 已知总体 $X tilde N(0, 4)$. $X_1, X_2, X_3$ 是来自总体 $X$ 的样本, 则 $display(sum_(i=1)^3 X_i^2 / 4 tilde)$ #uline().

+ 设 $X_1, X_2, X_3$ 是来自总体 $X$ 的样本, 在 $hat(mu)_1 = (X_1 + X_2)/2$, $hat(mu)_2 = (X_1 + 2X_3)/3$ 中, 参数 $E(X)$ 较好的估计量是 #uline().

+ 从总体中抽取 9 个样本, 其样本均值 $overline(X)=21.4$, 样本标准差 $S=0.18$. 设总体服从正态分布, 取 $alpha=0.05$, 则总体期望的置信区间为 (保留两位小数) #uline() (注: $t_(0.025)(8)=2.306$).

= 选择题 (共5题, 每题3分, 共15分)

#set enum(numbering: "1.")

+ 关于随机变量的以下说法正确的是 ( #h(1em) #h(1em) )
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 不相关一定独立], [B. 边缘分布可以确定联合分布],
    [C. 独立一定不相关], [D. $D(X+Y)=D(X)+D(Y)$],
  )

+ 设 $X_1, dots, X_n$ 是总体 $X$ 的简单随机样本, $E(X)=mu, D(X)=sigma^2$. 已知 $display(C sum_(i=1)^(n-1) (X_(i+1) - X_i)^2)$ 是 $sigma^2$ 的 无偏估计量, 则 C = ( #h(1em) #h(1em) )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $1/n$], [B. $1/(n-1)$], [C. $1/(2(n-1))$], [D. $1/(n+1)$],
  )

+ 设随机变量 $X tilde N(2, sigma^2)$, 且 $P(2 lt.eq X lt.eq 4) = 0.3$, 则 $P(X<0) = $ ( #h(1em) #h(1em) )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.3], [B. 0.2], [C. 0.5], [D. 0.6],
  )

+ 设 $X_1, dots, X_(16)$ 是来自正态总体 $N(0, 1)$ 的样本, $overline(X)$ 是样本均值, 若 $P(|overline(X)| >= b) = 0.01$, 则 $b=$ ( #h(1em) #h(1em) ) (注: $Phi(2.33) = 0.99$)
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.5825], [B. 0.6877], [C. 2.33], [D. 9.32],
  )

+ 设随机变量 $X$ 的概率密度函数为 $f_X(x)$, $Y = -2X$, 则 $Y$ 的概率密度函数为 $f_Y(y) = $ ( #h(1em) #h(1em) )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $-1/2 f_X(-y/2 + 2)$], [B. $1/2 f_X(-y/2 + 2)$], [C. $-2 f_X(-y/2 + 2)$], [D. $2 f_X(-y/2 + 2)$],
  )

= 计算题 (10分)
+ 设随机变量 $X$ 的概率密度函数为 $display(f(x)=cases(
  x\, &0<x<1,
  1\, & 1<=x<=3/2,
  0\, & "其它"
))$.\ 求(1) $P{0.3<x<3}$;(2) $E(X)$;(3) $D(X)$.

+ 果树的主人外出, 委托邻居浇水。设已知如果不浇水, 树死去的概率为 0.8；若浇水则树死去的概率为 0.15。有 0.9 的把握确定邻居会记得浇水。\
  (1) 求主人回来树还活着的概率;\
  (2) 若主人回来树已死去, 求邻居忘记浇水的概率。
+ #grid(
      columns: 2,
      gutter: 3em,
      [设二维离散型随机变量 $(X, Y)$ 的联合分布律如下表。\
        (1) 求 $P{X=Y}$;\
        (2) 求 X, Y 的相关系数 $display(rho_{X Y})$;\
        (3) X, Y 是否不线性相关? 是否独立? 为什么?
      ],
      [
        #figure(
          table(
            columns: 3,
            stroke: .5pt + black,
            align: center + horizon,
            [*X | Y*], $1$, $3$,
            $0$, $0$, $1 / 8$,
            $1$, $3 / 8$, $0$,
            $2$, $3 / 8$, $0$,
            $3$, $0$, $1 / 8$,
          ),
          caption: "联合分布律",
        )],
    )

+ 这个题目无语
  *设总体 X 的概率密度函数为 $f(x; theta) = theta x^{theta-1}, 0 < x < 1$, 其中 $theta > 0$ 为未知参数。 $X_1, dots, X_n$ 为来自总体 X 的简单随机样本, 求 $theta$ 的最大似然估计量。*


+ 根据以往经验, 某种电器元件的寿命 (单位: 小时) 服从参数为 $lambda = 0.01$ 的指数分布。现随机地取 16 只, 设它们的寿命是相互独立的, 求这 16 只元件的寿命的总和大于 1920 小时的概率。 (注: $Phi(0.8) = 0.7881$)


+ 游客乘电梯参观电视塔顶层, 电梯于每个整点的第 5 分钟、25 分钟和 55 分钟从底层启动。一游客在 8 点到 9 点之间的任意时刻到达底层候梯处, 求他等候时间的数学期望。
