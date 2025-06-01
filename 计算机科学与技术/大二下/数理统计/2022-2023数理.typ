#set document(title: "2022 至 2023 学年 第 1 学期 《概率论与数理统计》试卷 A 卷",) // Updated from image
#show math.equation.where(block: false): math.display
#set heading(numbering: "一、")
#set text(font:"PingFang SC")
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}
#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$2022 - 2023$ 学年 第 1 学期]]) // Updated from image
#align(center)[#text(size: 1.8em, font: "Heiti SC")[《概率论与数理统计》试卷 A 卷]] // Updated from image
#text(font:"Heiti SC")[注意事项]： // Not present in this specific exam paper image
#set enum(indent: 0.5cm, numbering: "1.") // Not present in this specific exam paper image
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。



#heading[填空题 (共10题, 每题3分, 共30分)]



+ 事件 $A, B$ 满足 $P(A)=0.6$, $P(B)=0.4$, $P(A | B)=0.5$, 则 $P(A union B)$ = #uline()

+ 在整数 0 至 9 中任取 3 个数, 则这三个数中最小的一个是 5 的概率为 #uline()

+ 甲, 乙, 丙三人独立的向目标各射击一次, 击中目标的概率分别为 0.7, 0.8, 0.9, 则目标被击中的概率为 #uline()

+ 设随机变量 $X$ 服从参数为 $lambda$ 的泊松分布, 且 $P(X=1) = P(X=2)$, 则 $lambda$ = #uline()

+ 设随机变量 $X ~ B(100, 0.1)$, 则 $E(X+1)$ = #uline()

+ 设随机变量 $X ~ N(1, 4)$, 则 $X$ 的标准差 = #uline()

+ 设二维随机变量 $(X, Y)$, $V a r(X)=1$, $V a r(Y)=4$, $rho_(X Y) = 0.5$, 则 $c o v(X, Y)$ = #uline()

+ 设 $X ~ N(10, sigma^2)$, $P(10 < X < 20) = 0.3$, 则 $P(0 < X < 10)$ = #uline()

+ 在数理统计中, 被研究对象的全体称为 #uline()

+ 设总体 $X ~ N(mu, 4^2)$, 其中 $mu$ 未知, 从总体中抽取样本容量为 25 的样本, 样本均值 $bar(x)=10$. 则未知参数 $mu$ 的置信系数 0.95 的区间估计为 #uline() ($Phi(1.96) = 0.975$)

#heading[单选题 (共5题, 15.0分)]



+ (3.0分) $A, B, C$ 是三个随机事件, $A, B, C$ 至少一个发生的事件是 ( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $A B C$],
    [B. $A union B union C$],
    [C. $A (B union C)$],
    [D. $A B C$], // Note: OCR has D as ABC, maybe a typo in the original? Keeping as OCRed.
  )

+ (3.0分) 设 $P(B) = 0.3$, $P(A union B) = 0.6$, $P(A B) = $ ( ) // Note: Question seems incomplete in OCR, asks for P(AB) but doesn't provide enough info. Extracted as is.
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.6],
    [B. 0.3],
    [C. 0.4],
    [D. 0.8], // Note: OCR has D.8, assuming 0.8
  )

+ (3.0分) 设离散型随机变量 $X$ 的概率分布列为:
  #figure(table(
    columns: 4,
    align: center,
    [$X$], [$1$], [$2$], [$3$],
    [$P$], [$0.5$], [$0.3$], [$p$],
  ), caption: none)
  则 $p=$ ( ).
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 0.3],
    [B. 0.4],
    [C. 0.2],
    [D. 0.1],
  )

+ (3.0分) // Score unclear in OCR
  连续型随机变量 $X$ 的概率密度函数 $f(x)$ 必满足条件 ( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. $f(x) >= 0$],
    [B. 在定义域内单调不减], // Text slightly fuzzy in OCR
    [C. $integral_0^(+oo) f(x) dif x = 1$], // Assuming integral over the whole domain
    [D. $lim f(x) = 1$], // Assuming limit as x approaches some value? Unclear.
  )

+ (3.0分) // Score unclear in OCR
  设 $X ~ N(2, 1)$ 分布, 则下列选项正确的是 ( )
  #grid(
    columns: 2,
    gutter: 15pt,
    [A. $P(X >= 2) = P(X <= 1)$],
    [B. $P(X >= 1) = P(X <= 2)$],
    [C. $P(X >= 1) = P(X <= 1)$],
    [D. $P(X >= 2) = P(X <= 2)$],
  )

#heading[计算题]



+ (本题 10 分) 12 个乒乓球中有 4 只是白色的, 8 只是黄色的。现从这 12 只乒乓球中随机的取出两只, 求下列事件的概率:
  (1) 取到两只黄球; (2) 取到两只白球; (3) 取到一只白球, 一只黄球。

+ (本题 10 分) 某高校女生的收缩压 $X$ (单位: 毫米汞柱) 服从 $N(110, 12^2)$, 求该校女生: (1) 收缩压不超过 105 的概率; (2) 收缩压在 100 至 120 之间的概率。 ($Phi(5/12) approx 0.6628$, $Phi(5/6) approx 0.7967$) // Note: Original used Phi(-5/12) and Phi(10/12), adapted to given positive Phi values symmetry. Recalculated based on image: Phi(5/12)=0.6628, Phi(10/12)=Phi(5/6)=0.7967.

+ (本题 10 分) 设随机变量 $X$ 的概率密度为 $f(x) = cases(k x^2 & "if " 0 < x < 1, 0 & "其它")$.
  试确定常数 $k$, 并求 $E(X)$ 和 $V a r(X)$。

+ (本题 10 分) 二维随机变量 $(X, Y)$ 的联合概率分布见下表: 求 (1) $X, Y$ 的边缘分布; (2) 相关系数 $rho_(X Y)$。
  #figure(table(
    columns: 3,
    align: center,
    [$X|Y$], [$0$], [$1$],
    [$0$], [$0.1$], [$0.3$],
    [$1$], [$0.3$], [$0.3$],
  ), caption: none)

+ (本题 10 分) 设总体 $X$ 的概率密度函数为 $f(x) = cases((beta+1) x^beta & "if " 0 < x < 1, 0 & "其它,")$, 其中 $beta > -1$, 设 $X_1, X_2, ..., X_n$ 为一组样本, 试求 $beta$ 的矩估计。

#heading[应用题]



+ (本题 5 分) 某人有 $n$ 把钥匙, 只有一把能打开门, 现任取一把, 若不能打开门就去掉, 求打开此门需试开次数 $X$ 的数学期望 $E(X)$。