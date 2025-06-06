#set text(font: "Heiti SC")

#align(left)[绝密★启用前]

#set text(font: "songti SC")
#align(center)[#text(size: 1.4em)[2024年河南工业大学期末考试]]

#set text(font: "Heiti SC",weight: "bold")
#align(center)[#text(size: 2em)[数据结构]]

#text(weight: "bold")[注意事项]：
#set text(font: "Songti SC")
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
#set text(font: "Heiti SC")
== 选择题：本大题共 $20$ 小题，每小题 $1$ 分，共 $20$ 分。在每小题给出的四个选项中，只有一项是符合题目要求的。
+ 以下说法正确的是【 $A$ 】
    #grid(
    columns:(2),gutter: 10pt,
    [$A.$ 数据元素是数据这个集合的个体],
    [$B.$ 数据元素枃由数据组成],
    [$C.$ 数据项是数据的基本单位],
    [$D.$ 数据元素是数据的最小单位]
    )

+ 以下不属于数据的逻辑结构的是【 $A$ 】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 顺序],
    [$B.$ 数据元素],
    [$C.$ 图],
    [$D.$ 集合]
    )
    
+ 数据结构被形式地定义为 $(K,R)$ ，其中 $K$ 是 $(1)$ 的有限集合， $R$ 是 $K$ 上的有限集合
+ 在数据结构中，从逻辑上可以把数据结构分成【 $D$ 】
    #grid(
    columns:(2),gutter: 10pt,
    [$A.$ 顺序存储结构，无序排列],
    [$B.$ 链式存储结构，无序排列],
    [$C.$ 紧凑结构和非紧凑结构],
    [$D.$ 顺序存储结构，有序排列]
    )
+ 线性表若采用链式存储结构时，要求内存中可用存储单元的地址【 $D$ 】
    #grid(
    columns:(2),gutter: 10pt,
    [$A.$ 必须是连续的],
    [$B.$ 部分地址必须是连续的],
    [$C.$ 一定是不连续的],
    [$D.$ 连续或不连续都可以]
    )
+ 通常要求同一逻辑结构中的所有数据元素具有相同的特性，这意味着【 $D$ 】
    #grid(
    columns:(1),gutter: 10pt,
    [$A.$ 每个元素都一样],
    [$B.$ 数据元素具有同一特点],
    [$C.$ 数据元素所包含的数据项的个数要相等],
    [$D.$ 不仅数据元素所包含的数据项的个数要相同，而且对应数据项的类型要相同]
    )

== 填空题
+ 所谓数据的逻辑结构指的是数据元素之间的#underline("逻辑关系的整体")
+ 数据元素是数据的#underline("基本单位")，数据项是数据的#underline("最小单位")。
+ 常见的数据存储一般有四种，它们分别是#underline("顺序存储结构")、#underline("链式存储结构")、#underline("索引存储结构")和#underline("散列存储结构")。
+ 数据结构是相互之间存在一种或多种特定关系的数据元素的集合，它包括三方面的内容。分别是#underline("数据的存储结构")和数据的逻辑结构 
+ 线性结构中元素之间存在数据#underline("一对一")的存储结构运算关系，树形结构元素之间存在#underline("一对多")关系，图形结构中元素之间存在#underline("多对多")关系
+ 在一般情况下，一个算法的时间复杂度是#underline("问题规模")的函数
+ 常见时间复杂度有：常数阶，#underline("background: ")，平方阶，···和指数阶

== 简答题
+ 数据与数据元素有何区别？
    
    凡是可以被计算机存储、加工的对象通称为数据。数据元素是数据的基干单位，在程序中通常作为一个整体进行处理。
    区别：数据元素是数据的个体。数据元素是数据的基本单位，数据是数据元素的集合。

+ 为什么说数据元素之间的逻辑关系是数据内部组织的主要方面？

    数据元素之间的逻辑关系是数据内部组织的主要方面，是数据结构的核心。数据元素之间的逻辑关系反映了数据元素之间的关系，是数据结构的核心。

+ 逻辑结构与存储结构有什么关系？逻辑结构反映数据元素的逻辑关系，施存储结构是数据结构在计算机中的表示。它包括数据元素的表示及其关系的表示。



+ 运算与运算的实现是什么关系？有哪些相同点和不同点？

    运算是指在逻辑结构上施加的操作，而运算的实现是指在计算机中完成该运算的程序