#set document(title: "2024年《概率论与数理统计》期末试题") // Updated Title from image
#set heading(numbering: "一、") // Top-level sections numbered I, II, ...
#set text(font: "PingFang SC")
//这个是选择题要用的横线
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}

// Standard Header Info - Not explicitly on this paper's images, but kept from prompt instructions
#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$2024$ 年《概率论与数理统计》期末试题]]) // Updated Year and Title
#align(center)[#text(size: 1.8em, font: "Heiti SC")[概率论与数理统计]] // Title already above
#text(font:"Heiti SC")[注意事项]：
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。


#heading[选择题 (共5题, 每题3分, 共15分)] // Section title derived from image context



+ 关于随机变量的以下说法正确的是 ( ).
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 不相关一定独立], [B. 边缘分布可以确定联合分布],
    [C. 独立一定不相关], [D. $D(X+Y) = D(X)+D(Y)$], // Needs condition of independence/uncorrelation
  )

+ 设 $X_1, X_2, ..., X_n$ 是总体 $X$ 的简单随机样本, $E(X) = mu$, $D(X) = sigma^2$. 已知 $C sum_(i=1)^n (X_i - bar(X))^2$ 是 $sigma^2$ 的无偏估计量, 则 $C = ( )$ .
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $1/n$], [B. $1/(n-1)$], [C. $1/(2(n-1))$], [D. $1/(n+1)$],
  )

+ 设随机变量 $X ~ N(2, sigma^2)$, 且 $P(2 <= X <= 4) = 0.3$, 则 $P(X < 0) = ( )$ .
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.3], [B. 0.2], [C. 0.5], [D. 0.6],
  )

+ 设 $X_1, X_2, ..., X_16$ 是来自正态总体 $N(0, 1)$ 的样本, $bar(X)$ 是样本均值, 若 $P( bar(X) >= b ) = 0.01$, 则 $b = ( )$ . ($Phi(2.33) = 0.99$)
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.5825], [B. 0.6877], [C. 2.33], [D. 9.32], // Calculation: P(Z >= 4b) = 0.01 => 4b=2.33 => b=0.5825
  )

+ 设随机变量 $X$ 的概率密度函数为 $f_X(x)$, 则 $Y = -2X + 4$ 的概率密度函数为 ( ).
  #grid(
    columns: 2, // Adjusted layout based on options
    gutter: 10pt,
    column-gutter: 1fr,
    [A. $-1/2 f_X (-1/2 y + 2)$], [B. $1/2 f_X (-1/2 y + 2)$],
    [C. $-2 f_X (-1/2 y + 2)$], [D. $2 f_X (-1/2 y + 2)$], // Note: OCR was messy, adjusted spacing
  )

#heading[计算题] // Section title derived from image context



1. (10分) 设随机变量 $X$ 的概率密度函数为 $f(x) = cases(
    x\, & 0 < x < 1, \
    1\, & 1 <= x <= 3/2, \
    0\, & "其他."
  )$, 求 (1) $P(0.3 < X < 3)$; (2) 期望 $E(X)$; (3) 方差 $D(X)$.

+ (10分) 病树的主人外出, 委托邻居浇水。设已知如果不浇水, 树死去的概率为 0.8。若浇水则树死去的概率为 0.15。有 0.9 的把握确定邻居会记得浇水。
  (1) 求主人回来树还活着的概率;
  (2) 若主人回来树已死去, 求邻居忘记浇水的概率。

+ (10分) 设二维离散型随机变量 $(X, Y)$ 的联合分布律如下表。
  #figure(
    table(
      columns: 3,
      align: center,
      [$X \ Y$], [$1$], [$3$],
      [$0$], [$0$], [$1 / 8$],
      [$1$], [$3 / 8$], [$0$],
      [$2$], [$3 / 8$], [$0$],
      [$3$], [$0$], [$1 / 8$],
    ),
    caption: none,
  )
  (1) 求 $P{X = Y}$;
  (2) 求 $X, Y$ 的相关系数 $rho_(X Y)$;
  (3) $X, Y$ 是否不线性相关? 是否独立? 为什么?

+ (10分) 设总体 $X$ 的概率密度函数为 $f(x) = cases(lambda e^(-lambda x)\, & x > 0\, \ 0\, & x <= 0)$, // Assuming standard exponential based on blurry OCR
  $X_1, X_2, ..., X_n$ 为来自总体 $X$ 的简单随机样本, 求 $lambda$ 的矩估计量。

+ (10分) 根据以往经验, 某种电器元件的寿命服从参数为 $lambda = 0.01$ 小时的指数分布。现随机地取 16 只, 设它们的寿命是相互独立的, 求这 16 只元件的寿命的总和大于 1929 小时的概率。(注: $Phi(0.8) = 0.7881$)


+ (5分) 游客乘电梯参观电视塔顶层。电梯于每个整点的第 5 分钟、25 分钟和 55 分钟载客启动。一游客在八点到九点之间的任意时刻到达底层候梯处, 求他等候时间的数学期望。
