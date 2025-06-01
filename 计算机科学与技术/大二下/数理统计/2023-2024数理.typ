#set document(title: "2023-2024年《概率论与数理统计》期末试题")

#set heading(numbering: "I. A. 1.")
#import "@preview/cetz:0.3.4": *
#import "@preview/cetz-plot:0.1.0": *
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}
#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$2023-2024$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em, font: "Heiti SC")[概率论与数理统计]]
#text(font:"Heiti SC")[注意事项]：

#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
= 填空题,本大题共6个小题,每小题2分,满分12分

1. 设 A、B 为随机事件, $P(A)=0.5$, $P(B)=0.6$, $P(B|A)=0.8$, 则 $P(A union B)$ = #uline()

2. 已知随机变量 X 的密度为 $f(x) = cases(
  a x+b\, & 0 lt x lt 1,
  0\, & "其它"
)$, 且 $P{X > 1/2} = 5/8$, 则 $a$ = #uline(), $b$ = #uline()

3. 已知 $X tilde N(-2, 0.4^2)$, 则 $E(X+3)^2$ = #uline()

4. 设 $X tilde N(10, 0.6)$, $Y tilde N(1, 2)$, 且X与Y相互独立, 则 $D(3X-Y)$ = #uline()

5. 设 $X_1, X_2, ..., X_n, ...$ 是独立同分布的随机变量序列, 且 $E(X_i) = mu$, $D(X_i) = sigma^2 (i=1, 2, ...)$, 则 $1/n sum_(i=1)^n X_i^2$ 依概率收敛于 #uline()

6. 设 $X_1, X_2, X_3, X_4$ 是来自正态总体 $N(0, 2^2)$ 的样本, 令 $Y = (X_1 + X_2)^2 + (X_3 - X_4)^2$, 则当 C = #uline() 时 $C Y tilde chi^2(2)$.

= 单项选择题,本大题共6个小题, 每小题2分,满分12分)

7. 设A, B为两随机事件, 且 $B subset A$, 则下列式子正确的是 \
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. $P(A+B)=P(A)$], [B. $P(A B)=P(A)$],
    [C. $P(B|A)=P(B)$], [D. $P(B-A)=P(B)-P(A)$],
  )

8. 某人连续向一目标射击, 每次命中目标的概率为 $3/4$, 他连续射击直到命中为止, 则射击次数为3的概率是 \
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $(3/4)^3$], [B. $(1/4)^2 (3/4)$], [C. $(1/4)^2 times 3/4 $], [D. $C_4^2(1/4)^2$],
  )

9. 已知随机变量 X 和 Y 相互独立, 且它们分别在区间 $[-1, 3]$ 和 $[2, 4]$ 上服从均匀分布, 则 $E(X Y)$ = \
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 3], [B. 6], [C. 10], [D. 12],
  )

10. 设总体 $X tilde N(mu, 2^2)$, 其中 $mu$ 未知, $X_1, X_2, ..., X_n$ 为来自总体的样本, 样本均值为 $overline(X)$, 样本方差为 $s^2$, 则下列各式中不是统计量的是 \
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $2 overline(X)$], [B. $s^2 / (sigma^2)$], [C. $(overline(X)-mu )/ sigma$], [D. $((n-1) S^2) / sigma^2$],
  )

11. 若 $X tilde t(n)$, 那么 $X^2$ 服从 \
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $F(1, n)$], [B. $F(n, 1)$], [C. $chi^2(n)$], [D. $t(n^2)$],
  )

12. 设 $X_1, ..., X_n,X_(n+1)...,X_(n+m)$ 是来自正态总体 $N(0, sigma^2)$ 的容量为 $n+m$ 的样本, 则统计量 $y=(m sum_(i=1)^n X_i^2)/(n sum_(i=n+1)^(n+m)X_i^2)$ 服从的分布是 \


  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $F(m, n)$], [B. $F(n-1, m-1)$], [C. $F(n, m)$], [D. $F(m-1, n-1)$],
  )

= 判断题,正确的请在题号前的括号内打 $checkmark$, 错误的打 $times$, 本大题共5个小题,每小题2分,满分 $10$ 分

( #h(1em) ) 13. 若事件A、B、C两两独立, 必有A、B、C相互独立.

( #h(1em) ) 14. 若X的取值比较集中, 则方差 $D(X)$ 较小.

( #h(1em) ) 15. 若X服从参数 $lambda=3$ 的泊松分布, 则 $E(X)=3$, $D(X)=3$.

( #h(1em) ) 16. 若 $"Cov"(X, Y) = 0$, 则X和Y一定独立.

( #h(1em) ) 17. 已知 $X_1, X_2, ..., X_n$ 是来自总体的样本, 则 $1/3overline(X)+a overline(X_i) + 5$ 是统计量.

= 计算题,本大题共6个小题,每题6分,满分36分

18. 设一盒中装有编号为 1, 2, 3, 4, 5 的5个球, 现从中任取3个球, 用X表示被抽取的3个球的中间号码数, 求X的分布律.

19. 有两箱同种类的零件, 第一箱装了50只, 其中有10只一等品; 第二箱装了30只, 其中有18只一等品; 今从两箱中任挑出一箱, 然后从该箱中依次不放回地取出2个零件出来, 每次取一个. 求:
  (1) 第一次取到的是一等品的概率;
  (2) 在第一次取到的零件是一等品的条件下, 求该零件来自于第一箱的概率.

20. 在一公共汽车站有四个人分别在等四路公交车, 设每人等车的时间(单位: 分钟) 都服从 $[0, 5]$ 上的均匀分布, 求四个人中至少有两人等车时间超过2分钟的概率.

21. 已知离散型随机变量 $(X, Y)$ 联合概率分布如@联合概率分布表: (8分)
  #figure(
    table(
      columns: 4,
      stroke: .5pt + black,
      align: center + horizon,
      [*$X|Y$*], $1$, $2$, $3$,
      $1$, $p_(11)=1 / 8$, $p_(12)=0$, $p_(13)=1 / 4$, // Values assumed based on typical structure, OCR unclear
      $2$, $p_(21)=1 / 2$, $p_(22)=1 / 8$, $p_(23)=0$, // Values assumed based on typical structure, OCR unclear
    ),
    caption: "联合概率分布表",
  )<联合概率分布表>
  求: (1) $E(X)$, $E(Y)$, $D(X)$, $D(Y)$;
  (2) $C o v(X, Y)$; (3) $rho_(X Y)$.
// Note: Table values are guesses due to OCR quality. Calculations depend heavily on these.
// Example calculation structure:
// Marginal P(X=1) = P(X=1, Y=1)+P(X=1, Y=2)+P(X=1, Y=3) = 1/8 + 0 + 1/4 = 3/8
// Marginal P(X=2) = P(X=2, Y=1)+P(X=2, Y=2)+P(X=2, Y=3) = 1/2 + 1/8 + 0 = 5/8
// E(X) = 1 * P(X=1) + 2 * P(X=2) = 1*(3/8) + 2*(5/8) = 13/8
// ... and so on for E(Y), D(X), D(Y), E(XY), Cov, rho.

22. 随机向量 $(X, Y)$ 的联合概率密度函数为 $f(x, y) = cases(
  4e^(-2y)\, &0<x<y,
   0\, & "其它" )$ // Region assumed based on common problems, OCR partially obscured.

  (1) 求常数k;

  (2) 求X和Y的边缘密度函数; X与Y是否独立?

  (3) 求在 $Y=y$ 的条件下, X的条件概率密度 $f_(X|Y)(x|y)$.

23. 设二维随机变量 $(X, Y)$ 在区域 $D = {(x, y) | 0 < x < 2, -1 < y < 2}$ 上服从均匀分布. 求 $P{Y >= X}$. (如图)
#figure(
  canvas(
    debug: false,
    {
      import draw: *
      scale(1)
      // // 绘制坐标轴和刻度
      line((0, -1), (0, 3), stroke: gray + 0.5pt, mark: (end: ">")) // y轴
      line((-1, 0), (3, 0), stroke: gray + 0.5pt, mark: (end: ">")) // x轴
      content((3.5, 0), "x", fill: gray)
      content((0, 3.4), "y", fill: gray)

      line((-0.5, -0.5), (2.5,2.5))
      merge-path(
        fill: gray,
        {
          line((0, 0), (0, 2))
          line((2, 2), (0, 0))
        },
      )
      for i in range(4) {//x轴刻度
        line((i, -0.1), (i, 0.1), stroke: gray + 0.5pt)
        if i > 0 { content((i, -0.5), str(i), fill: gray) }
      }
      for i in range(-1,4) {//y轴刻度
        line((-0.1, i), (0.1, i), stroke: gray + 0.5pt)
        if i > -2 { content((-0.5, i), str(i), fill: gray) }
      }
    },
  ),
)

= 应用题,本大题共4个小题,每小题6分,满分24分

24. 已知新生婴儿中生男孩的概率为0.515. 用中心极限定理近似计算在10000个新生婴儿中女孩不少于男孩的概率.\ (备查数据: $Phi(1)=0.8413$; $Phi(2)=0.9772$; $Phi(3)=0.9987$)

25. 设总体X的概率分布为
  #figure(
    table(
      columns: 4,
      stroke: .5pt + black,
      align: center + horizon,
      [*X*], $1$, $2$, $3$,
      [*P*], $theta(2theta-1)$, $3theta(1-theta)$, $(1-theta)^2$,
    ),
    caption: "总体X的概率分布",
  )
  其中 $theta (0 < theta < 1)$ 为未知参数; 又设 $X_1, ..., X_n$ 为来自总体X的简单随机样本.
  求: (1) $theta$ 的矩估计量 $hat(theta)$; (2) 对抽得的一组样本值 $x_1=2, x_2=3, x_3=1$, 求 $theta$ 的矩估计值. // OCR cut off potential x4 value, assuming n=3 based on provided values.

26. 设总体 $X tilde N(1, 0.5^2)$, $X_1, ..., X_(10)$ 是总体X的简单随机样本, 求 $P{ sum_(i=1)^10 (X_i - 1)^2 >= 4 }$. (备查数据: $chi_(0.10)^2(10) = 15.987$, $t_(0.1)(9) = 1.383$) // Note: provided t-value OCR differs slightly from standard values, and chi-sq value seems irrelevant for P(sum > 3). Maybe the question intended P(sum > 3.99675) corresponding to chi^2_0.10? Assuming the question is as written: $sum (X_i - 1)^2 / 0.5^2 tilde chi^2(10)$. Need $P{ sum (X_i-1)^2 > 3 } = P{ chi^2(10) > 3 / 0.25 } = P{ chi^2(10) > 12 }$. This requires a chi-square table/calculator for precise value. Using $chi^2_{0.10}(10)=15.987$, we know $P(chi^2(10) > 15.987) = 0.10$. Since 12 < 15.987, $P(chi^2(10) > 12) > 0.10$.

27. 已知某地幼儿的身高 $X tilde N(mu, sigma^2)$. 现从该地一幼儿园随机抽查了9名幼儿, 测得这9名幼儿的平均身高为 $115 c m$. 已知该幼儿园的幼儿身高的标准差 $sigma = 9 c m$. 求总体均值 $mu$ 的置信度为 95% 的单侧置信上限.\ (备查数据: $t_(0.025)(8)=2.306$; $t_(0.05)(8)=1.8595$; $Phi(1.645)=0.95$; $Phi(1.96)=0.975$)

= 证明题
28. 设总体 $X tilde N(0, 1)$, $X_1, ..., X_n (n > 1)$ 为简单随机样本, 证明: 统计量 $display(Y = (sqrt(n-1) X_i) / sqrt(X_2^2+X_3^2+...+X_n^2))$ 服从自由度为 $n-1$ 的 $t$ 分布.
// Note: The expression in the image OCR was garbled. Reconstructed based on the requirement to prove it follows t(n-1) distribution. The denominator is S, the sample standard deviation. $sum(X_i - overline(X))^2 = sum X_i^2 - n overline(X)^2$.
