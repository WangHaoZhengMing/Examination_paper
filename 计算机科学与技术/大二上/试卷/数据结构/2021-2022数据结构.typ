// #import "@preview/cetz:0.3.1": canvas, draw, tree
// #set text(font: "Heiti SC")
// #align(left)[绝密★启用前]

// #set text(font: "songti SC")
// #align(center)[#text(size: 1.4em)[2021-2022年河南工业大学期末考试]]

// #set text(font: "Heiti SC",weight: "bold")
// #align(center)[#text(size: 2em)[数据结构]]

// #text(weight: "bold")[注意事项]：
// #set text(font: "Songti SC")
// #set enum(indent: 0.5cm, numbering: "1.")
// + 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
// + 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
// + 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
// #set heading(numbering: "一、")
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

// #set page(footer: align(center)[数据结构 #counter(page).display("第 1 页（共 1 页）",both: true)])

//----------------------------------------------------------------------------------
#align(left)[#text(font:"Heiti SC")[绝密★启用前]]
#align(center,text(15pt)[#text(font:"Songti SC")[$2021-2022$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em,font: "Heiti SC")[数据结构]]
#text(font:"Heiti SC")[注意事项]：

#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
== 一、选择题：本大题共 $20$ 小题，每小题 $1$ 分，共 $20$ 分。在每小题给出的四个选项中，只有一项是符合题目要求的。

+ 某算法的语句执行频度为 $(8n+n log 2 n +n^2 +3)$ ,其时间复杂度为【$C$】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $O(n)$],
    [$B.$ $O(n log 2 n)$],
    [$C.$ $O(n^2)$],
    [$D.$ $O(n^3)$]
    )


+ 在一个长度为 $n$ 的顺序存储线性表中,删除第 $i$ 个元素时,需要从前向后依次后移\_\_\_\_个元素【$A$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $n-j$],
    [$B.$ $n-i+1$],
    [$C.$ $n-i-1$],
    [$D.$ $i$]
    )
+ 在单链表指针为 $p$ 的结点之后插入指针为 $s$ 的结点,正确的操作是【$B$】
  #grid(
    columns:(2),gutter: 10pt,
    [$A.$ $s->"next"=s;s->"next"=p->"next"$],
    [$B.$ $s->"next"=p->"next"=s$],
    [$C.$ $p->"next"=s,p->"next"=s->"next"$],
    [$D.$ $p->"next"=s->"next",s->"next"=p$]
    )
+ 设输入序列 $1,2,3,4$ ,则下列序列中不可能是出栈序列【$D$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $1，2，3，4$],
    [$B.$ $4，3，2，1$],
    [$C.$ $1，3，4，2$],
    [$D.$ $4，1，2，3$]
    )
+ 某线性表中最常用的操作是在末尾插入和删除结点,则选用\_\_\_\_最节省时间【$C$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 单链表],
    [$B.$ 单链循环表],
    [$C.$ 带尾指针的单链循环表],
    [$D.$ 带头节点的双循环链表]
    )
+ 若用一个大小为 $6$ 的数组来实现循环队列,且当前 $"rear"$ 和 $"front"$ 的值分别为 $0$ 和 $3$.当从队列中删除一个元素,再加入两个元素后, $"rear"$ 和 $"front"$ 的值分别为【$B$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $1,5$],
    [$B.$ $2,4$],
    [$C.$ $4,2$],
    [$D.$ $5,1$]
    )
+ 广义表 $A=(a,b,(c,d),(e,(f,g)))$ ,则 $"Head"("Tail"("head"("Tail"("Tail"(A)))))$ 的值为【$D$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $(g)$],
    [$B.$ $(d)$],
    [$C.$ $c$],
    [$D.$ $d$]
    )
+ 对矩阵压缩存储是为了【$D$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 方便运算],
    [$B.$ 方便存储],
    [$C.$ 提高运算速度],
    [$D.$ 减少存储空间]
    )
+ 在一个有向图的邻接表中，每个顶点单链表中结点的个数等于该顶点的【$A$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 出度],
    [$B.$ 入度],
    [$C.$ 度数],
    [$D.$ 度数减一]
    )
+ 若一个图的边集为{(A,B),(A,C),(B,D),(C,F),(D,E),(D,F)}，则从顶点 A 开始的深度优先遍历序列可能为【$B$】
  #grid(
    columns:(1fr,1fr), gutter: 10pt,
    [$A.$  A,B,C,F,D,E],
    [$B.$  A,C,F,D,E,B],
    [$C.$  A,B,D,C,F,E],
    [$D.$  A,B,D,F,E,C]
  )


+ 假设在一理想二叉树中，双分支节点数为 $15$，单分支结点数的 $30$，则叶子结点数为【$B$】
  #grid(
    columns:(4),gutter: 1fr,
    [$A.$ $15$],
    [$B.$ $16$],
    [$C.$ $17$],
    [$D.$ $47$]
    )

    
  #box(
    inset: 12pt,
    stroke: 1pt + gray,
    radius: 6pt,
    [
    分支总数 = 双分支数 + 单分支数 + 叶子节点数 - 1(root)\ 双分支数 + 单分支数 = 非叶节点数\
    分支总数 = $2 times$ 双分支数 + 单分支数\
    15 +30 -1 + 叶子节点数 = $2 times$ 15 + 30 \
    ]
  )

+ 将森林 $F$ 转为对应的二叉树 $T$， $F$ 中叶子结点的个数等于【$A$】
  #grid(
    columns:(2),gutter: 12pt,
    [$A.$ $T$ 中叶子结点的个数],
    [$B.$ $T$ 中度为 $1$ 结点的个数],
    [$C.$ $T$ 中左孩子节点为空的结点个数$space space space $],
    [$D.$ $T$ 中右孩子节点为空的结点个数]
    )
+ 对于长度为 9 的顺序存储的有序表，若采用折半查找，在等概率情况下平均查找长度为【$C$】
  #grid(
    columns:(4), gutter: 1fr,
    [$A.$ $20/9$],
    [$B.$ $19/9$],
    [$C.$ $25/9$],
    [$D.$ $22/9$]
  )

+ 对下列 4 个序列用快速排序方法进行排序，以序列的第 1 个元素为基准进行划分。在第 1 趟划分过程中，元素移动次数最多的序列是【$A$】
  #grid(
    columns:(1fr), gutter: 10pt,
    [$A.$ $70, 75, 82, 90, 23, 16, 10, 68$],
    [$B.$ $70, 75, 68, 23, 10, 16, 90, 82$],
    [$C.$ $82, 75, 70, 16, 10, 90, 68, 23$],
    [$D.$ $23, 10, 16, 70, 82, 75, 68, 90$]
  )

+ 关于拓扑排序，下面说法正确的是【$D$】
  #grid(
    columns:(1fr), gutter: 10pt,
    [$A.$ 对连通的有向图中，所有结点都会出现在其拓扑排序序列中],
    [$B.$ 对同一个图而言，拓扑排序的结果是唯一的],
    [$C.$ 拓扑排序中入度为 0 的结点总会排在入度大于 0 的结点的前面],
    [$D.$ 拓扑排序结果序列中的第一个结点一定是入度为 0 的点]
  )
    #box(
    inset: 3pt,
    stroke: 1pt + gray,
    radius: 6pt,
    [#set text(font: "songti SC",size: 10pt)
A、拓扑排序只适用于有向无环图（DAG）。如果图中存在环路，则无法进行拓扑排序，也就不会包含所有节点。
    ]
  )



== 二、判断题：本大题共 $10$ 小题，每小题 $1$ 分，共 $10$ 分。判断对的填“T”，判断错的填“F”。
+ 原子存储结构（元素在物理上是一个挨着一个的）的主要缺点是不利于数据的插入或删除操作。 #h(1fr) 【$T$】
+ 用邻接矩阵表示图进行深度优先遍历时，通常是采用队列来实现算法的。 #h(1fr) 【$T$】
+ 树的后序遍历与其次对应的数字子树的后序遍历相同。 #h(1fr) 【$T$】
+ 对n阶对称矩阵矩阵压缩存储时，需要表长为 n(n-1)/2 的顺序表。 #h(1fr) 【$F$】
+ 平衡二叉树左右子树高度最多相差0或1。 #h(1fr) 【$T$】
+ 数据结构主要研究非数值问题。 #h(1fr) 【$T$】
+ 树的先序遍历与与其对应的二叉树的先序遍历相同。 #h(1fr) 【$T$】
+ 用克鲁斯卡尔求联通和到的最小生成树一道相同。 #h(1fr) 【$F$】
+ 哈夫曼树的总结点个数（多于1时）不可能为偶数。 #h(1fr) 【$T$】
    #box(
    inset: 3pt,
    stroke: 1pt + gray,
    radius: 6pt,
    [#set text(font: "songti SC",size: 8pt)
其本身就是两个节点不断合并的过程，所以节点数一定是奇数。
    ]
  )
+ 取顺序表的第 $i$ 个元素的时间与 $i$ 的大小有关. #h(1fr) 【$F$】


== 三、简答题：本大题共 $8$ 大题，共 $55$ 分。
+ 一棵二叉树的先序遍历序列为 $"ABDEFGCQ"$，中序遍历序列为 $"BDEFACGQ"$，请给出这棵二叉树，并画出其后序线索 (用虚线表示)。

+ 某电文传输中共使用了 8 个字符 a, b, c, d, e, f, g, h，其出现频率依次为 7, 19, 2, 6, 32, 3, 21, 10。\
  (1) 请画出对应的哈夫曼树 (要求左子树的结点权值小于右子树结点的权值)。（3 分）\
  (2) 求出每个字符的哈夫曼编码（左 0 右 1）。（3 分）\
  (3) 若由编码序列 0110000101011001 的译码电文。（3 分）

+ 已知如图 1 所示的无向网图，从 A 点出发，利用 prim 算法求最小生成树，写出生成步骤。
  #grid(
    [  #figure(
    image("图片/2021-2022/3.3.png", width: 100%),
    caption: [
    ],
  )],
      columns:(50%,50%),
    [  #figure(
    image("图片/2021-2022/3.4.png", width: 100%),
    caption: [
    ],
  )],
    )
#pagebreak()
+ 带权有向图 G，如图 2 所示。\
  （1）写出领接矩阵；\
  （2）利用 Dijkstra 算法，求出从 V0 开始的最小路径。要求写出算法过程中下表中列出的各步的状态 ；\
 

    #table(
    columns: (auto, 1fr, 1fr, 1fr),
    align: center,
    [终点],[i=1],[i=2],[i=3],
    [V1],[],[],[],
    [V2],[],[],[],
    [V3],[],[],[],
    [Vk],[],[],[],
    [S],[],[],[],
  )
+ 根据下图的 AOE 网络，求出其关键路径，并计算工程的最短完成时间。
  #figure(
    image("图片/2021-2022/NO1.jpg", width: 70%),
    caption: [
    ],
  )
  （1）求出每个事件的最早开始时间和最晚开始时间。\
      #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    align: center,
    [     ],[A],[B],[C],[D],[E],[F],[G],
    [ve()],[],[],[],[],[],[],[],
    [vl()],[],[],[],[],[],[],[],
  )
  #colbreak()
    （2）求出每个活动的最早开始时间和最晚开始时间。\
      #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr,1fr),
    align: center,
    [     ],[\<A,B>],[\<A,C>],[\<B,D>],[\<C,D>],[\<C,E>],[\<D,F>],[\<E,F>],[\<F,G>],
    [e()],[],[],[],[],[],[],[],[],
    [l()],[],[],[],[],[],[],[],[],
    [l()-e()],[],[],[],[],[],[],[],[],
  )
+ 已知由8个关键字组成的序列：7，14，8，1，18，30，9，15，散列表长度为 13 (地址为 0-12)，散列函数为：Hash(key)=key mod 11，用线性探测法解决冲突\
  (1) 给出所构造的列表。
  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr,1fr),
    align: center,
    [     ],[0],[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],
    [关键字],[],[],[],[],[],[],[],[],[],[],[],[],[],
    [冲突次数],[],[],[],[],[],[],[],[],[],[],[],[],[]
  )
  (2) 分别计算查找成功和查找不成功的平均查找长度ASL。


+ 有一组数据 8,3,10,14,6,1，请根据所列顺序给出建立二叉排序树的过程，并计算平均查找长度 ASL。

== 四、算法设计（共 2 题，每题 10 分，共 20 分）
+ 已知数据元素为整型数的链表 $L$。\
  (1) 写出链表中结点类型的定义。\
  (2) 设计算法：判断该链表是否是递增的。

+ 以二又链表为存储结构，假设其数据域为整型数\
  （1）写出结点类型的定义； \
  （2）设计算法：输出在二叉树的后序遍历序列中，所有偶数位置（例如遍历序列中的第2、4、6....个数据元素）结点的数据域 












#pagebreak()
+ 已知由8个关键字组成的序列：7，14，8，1，18，30，9，15，散列表长度为 13 (地址为 0-12)，散列函数为：Hash(key)=key mod 11，用线性探测法解决冲突\
  (1) 给出所构造的列表。
  #table(
    columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr,1fr),
    align: center,
    [     ],[0],[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12],
    [关键字],[],[1],[],[14],[15],[],[],[7],[8],[18],[30],[9],[],
    [冲突次数],[],[],[],[],[],[],[],[1],[2],[2],[1],[],[]
  )
  (2) 分别计算查找成功和查找不成功的平均查找长度ASL。





#table(
  columns: 6 * (1fr,),


  table.header(
    [Team member],
    [Monday],
    [Tuesday],
    [Wednesday],
    [Thursday],
    [Friday]
  ),
  [Evelyn Archer],
    table.cell(colspan: 2, "ofi"),
    table.cell(colspan: 2, "rem"),
    "ofi",
  [Lila Montgomery],
    table.cell(colspan: 5, "lea"),
  [Nolan Pearce],
    "rem",
    table.cell(colspan: 2, "ofi"),
    "rem",
    "ofi",
)