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

#let quiz(body1, body2) = {
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
#align(center,text(15pt)[#text(font:"Songti SC")[$2020-2021$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em,font: "Heiti SC")[数据结构]]
#text(font:"Heiti SC")[注意事项]：

#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
== 一、选择题：本大题共 $20$ 小题，每小题 $1$ 分，共 $20$ 分。在每小题给出的四个选项中，只有一项是符合题目要求的。
+ 算法的时间复杂度取决于【A】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 问题的规模],
    [$B.$ 待处理数据的初态],
    [$C.$ 计算机的配置],
    [$D.$ A 和 B]
    )

+ 与数据元素本身的形式、内容、相对位置、个数无关的是数据的【B】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 存储结构],
    [$B.$ 逻辑结构],
    [$C.$ 存储实现],
    [$D.$ 运算实现]
    )

+ 在对查找表的查找过程中，若被查找的数据元素不存在，则把该数据元素插入到集合中，这种方式主要适合于【B】
    #grid(
    columns:(50%,50%),gutter: 10pt,
    [$A.$ 静态查找表],
    [$B.$ 动态查找表],
    [$C.$ 静态查找表与动态查找表],
    [$D.$ 静态查找表或动态查找表]
    )

+ 若让元素 1, 2, 3, 4, 5, 6 依次进栈，则出栈次序不可能出现在【D】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 6, 5, 4, 3, 2, 1],
    [$B.$ 2, 1, 6, 5, 4, 3],
    [$C.$ 2, 1, 5, 4, 3, 6],
    [$D.$ 2, 3, 6, 4, 5, 1]
    )

+ 栈在哪里中有所应用。【D】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 递归调用],
    [$B.$ 函数调用],
    [$C.$ 图深度遍历],
    [$D.$ 前三个选项都有]
    )

+ 循环队列存储在数组 A[0..m] 中，则入队时的操作为【D】。
    #grid(
    columns:(),gutter: 7pt,
    [$A.$ rear = rear + 1],
    [$B.$ rear = (rear + 1) % (m - 1)],
    [$C.$ rear = (rear + 1) % m],
    [$D.$ rear = (rear + 1) % (m + 1)]
    )


+ 串 “ababaaab” 的 next 函数值为【D】。
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 0],
    [$B.$ 1],
    [$C.$ 2],
    [$D.$ 都不正确]
    )

+ 二维数组 A 的每个元素是由 10 个字符组成的串，其行下标 i=0,1,...,8，列下标 j=1,2,...,10。若 A 按行先存储，元素 A[8,5] 的起始地址与当 A 按列先存储时的元素【B】的起始地址相同。设每个字符占一个字节。
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ A[8,5]],
    [$B.$ A[3,10]],
    [$C.$ A[5,8]],
    [$D.$ A[0,9]]
    )

+ 设广义表 L=(a,b,(c,d))，则 Tail(Head(Tail(L))) 值为【A】。
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ ()],
    [$B.$ b],
    [$C.$ c],
    [$D.$ d]
    )

+ 由 3 个结点可以构造出多少种不同的二叉树【D】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 2],
    [$B.$ 3],
    [$C.$ 4],
    [$D.$ 5]
    )

+ 在下列存储形式中，不是树的存储形式的是【D】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 双亲表示法],
    [$B.$ 孩子链表表示法],
    [$C.$ 孩子兄弟表示法],
    [$D.$ 顺序存储表示法]
    )

+ 已知如下图的邻接矩阵，则从顶点 v2 出发深度优先遍历的结果是【B】。（缺少图片信息，无法判断正确答案）
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 2013],
    [$B.$ 2031],
    [$C.$ 2130],
    [$D.$ 2301]
    )

+ 用邻接表表示图进行广度优先遍历时，通常借助\_\_\_\_来实现算法。【B】
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 栈],
    [$B.$ 队列],
    [$C.$ 树],
    [$D.$ 图]
    )

+ 适用于折半查找的表的存储方式及其元素排列要求为【D】。
    #grid(
    columns:(50%,50%),gutter: 10pt,
    [$A.$ 链接方式存储，元素无序],
    [$B.$ 链接方式存储，元素有序],
    [$C.$ 顺序方式存储，元素无序],
    [$D.$ 顺序方式存储，元素有序]
    )

+ 下述几种排序方法中，要求内存最大的是【B】。
    #grid(
    columns:(4),gutter: 1fr,
    [$A.$ 希尔排序],
    [$B.$ 快速排序],
    [$C.$ 直接插入排序],
    [$D.$ 堆排序]
    )




== 二、判断题：本大题共 $10$ 小题，每小题 $1$ 分，共 $10$ 分。判断对的填“T”，判断错的填“F”。
+ 单链栈从任何一个结点出发，都能访问到所有结点。 #h(1fr) 【$F$】
+ 由二叉树的先序序列能唯一确定一颗二叉树。 #h(1fr) 【$F$】
+ 除了空树以外，存在有偶数个结点的满二叉树。 #h(1fr) 【$F$】
+ 无向图的邻接矩阵是一个对称矩阵。 #h(1fr) 【$T$】
+ 树（或森林）与二叉树可以相互转化。 #h(1fr) 【$T$】
+ 有权图的最小生成树是不唯一的。 #h(1fr) 【$T$】
+ 设二叉树有 8 个结点，其中 0 度结点 3 个，则 1 度结点为 2 个。 #h(1fr) 【$F$】
+ 散列表函数越复杂越好，因为这样随机性好，冲突概率小。 #h(1fr) 【$F$】
+ 在 n 个结点的无向图中，若边数大于 n-1，则该图必定是连通图。 #h(1fr) 【$F$】
+ 稀疏矩阵压缩存储后，必会失去随机存取功能。 #h(1fr) 【$T$】
#pagebreak()
== 三、简答题：本大题共 $4$ 题，共 $18$ 分。请把答案写入答题纸中。


+ 已知循环队列的定义如下\
  请写出循环队列的判空条件与判满条件。（4分）\

  ```cpp
  Typedef struct{
    QueueData *data;
    int front; int rear;
    } SeqQueue;
    SeqQueue Q;//循环队列的最大长度为：maxsize
  ```
+ 排序算法效率的主要评价指标是什么？


+ 设单向链表的结点定义如下：
  ```cpp
  Typedef struct node{
  ElemType data;//数据域
  struct node *next;//指针域
  } ListNode;
  ```
  已知 ListNode 类型指针 p 所指的节点不是尾结点也不是头结点。如图二所示，若删除 p 所指点的后继结点（如下图所示），请写出主要的操作语句。
  #figure(
  image("图片/2020-2021数据结构/3.2.jpg", width: 60%),
  caption: [
  ],
)

== 四、应用题：本大题共 $6$ 大题，共 $37$ 分。请把答案写入答题纸中。
+  以关键字序列（03，68，98，17，50，12）为初始序列，请画出建立初始大顶堆的过程。
  #box(
    inset: 12pt,
    stroke: 1pt + gray,
    radius: 6pt,
    [
      从最后一个非叶子结点开始，依次向前调整，直至根结点
    ]
  )
+ 请将下图中的树采用孩子兄弟法进行存储，请画出孩子兄弟法的二叉树。
#figure(
  image("图片/2020-2021数据结构/图4.svg", width: 30%),
  caption: [
  ],
)
3. 在一棵空的二叉排序树中依次插入关键字序列（12，7，17，11，16，2），请画出所得二叉排序树。
+ 用 Dijkstra 算法求有向图中顶点 0 到其余各顶点的最短路径。
#figure(
  image("图片/2020-2021数据结构/4.6.jpg", width: 50%),
  caption: [
  ],    
)
#table(
  columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr,1fr),
  align: center,
  stroke: 1pt,
  [终点], [I=1], [I=2], [I=3], [I=4], [I=5],[I=6],
  [V1], [13 \ (v0 v1)], [], [], [], [],[],
  [V2], [3 \ (v0 v2)], [], [], [], [],[],
  [V3], [∞ \ 不可达], [], [], [], [],[],
  [V4], [30 \ (v0 v4)], [], [], [], [],[],
  [V5], [∞ \ 不可达], [], [], [], [],[],
  [V6], [32 \ (v0 v6)], [], [], [], [],[]
)
== 算法设计题：本大题共 $2$ 题，共 $10$ 分。请把答案写入答题纸中。
+ 请根据栈的思想设计：十进制整数转换成8进制数。（要求定义出栈的数据类型，并写出算法）
2. 编写递归算法，将二叉树的后遍历序列中第 n 个结点的数据域扩大 10 倍并输出。其中类型定义如下。

  ```cpp
  Typedef struct BiTNode{
    int data;
    Struct BiTnode *lchild，*rchild; //左右孩子指针
  }BiTsode, *BiTree;```