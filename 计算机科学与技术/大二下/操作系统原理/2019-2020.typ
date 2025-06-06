#set document(title: "《操作系统原理》期末试题")
#set heading(numbering: "一、")
#set text(font: "PingFang SC", lang: "zh")

// 填空题使用的横线
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}

// 导入绘图包
#import "@preview/cetz:0.3.4": *

// 页面设置
#set page(margin: 2cm, numbering: "1/1")

// 试卷头部
#align(center)[#text(size: 1.8em, font: "Songti SC")[2019至2020学年 第2学期]]
#align(center)[#text(size: 2em, font: "Heiti SC")[《操作系统原理》试卷 A卷]]



#table(
  columns: (auto, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  stroke: 0.5pt,
  [*题号*], [*一*], [*二*], [*三*], [*四*], [*五*], [*六*], [*七*], [*八*], [*九*], [*十*], [*总分*],
  [*得分*], [], [], [], [], [], [], [], [], [], [], [],
)


= 选择题 (共15题, 每题1分, 共15分) 答案填入答题纸的表格中
#set enum(indent: 0.5cm, numbering: "1.")

+ 页式存储管理中的地址格式是( )地址。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 线性], [B. 一维], [C. 二维], [D. 三维],
  )

+ 成组链接法可用于( )。
  #grid(
    columns: 2,
    row-gutter: 8pt,
    column-gutter: 1fr,
    [A. 磁盘空间的管理], [B. 磁盘的驱动调度],
    [C. 文件目录的查找], [D. 页式虚拟存贮管理中的页面调度],
  )
+ 通道是一种( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. I/O端口], [B. 数据通道], [C. 软件工具], [D. I/O专用处理器],
  )
+ 任何两个并发进程之间( )。
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 一定存在互斥关系], [B. 一定存在同步关系],
    [C. 一定彼此独立无关], [D. 可能存在同步或互斥关系],
  )
+ 在请求分页管理方式中, 页表中的状态位用来指示对应页( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 是否被修改过], [B. 是否允许动态增长], [C. 是否已调入内存], [D. 是否已置换],
  )
+ 可变式分区分配方案中, 某一作业完成后, 系统收回其主存空间, 并与相邻空闲区合并, 为此需修改空闲区表, 造成空闲区数减1的情况是( )。
  #grid(
    columns: 2,
    gutter: 0.5em,
    column-gutter: 1fr,
    [A. 无上邻空闲区, 也无下邻空闲区], [B. 有上邻空闲区, 但无下邻空闲区],
    [C. 有下邻空闲区, 但无上邻空闲区], [D. 有上邻空闲区, 也有下邻空闲区],
  )
+ 一种既有利于短作业又兼顾长期作业的作业调度方式是( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 先来先服务], [B. 均衡调度], [C. 最短作业优先], [D. 多级反馈队列调度],
  )
+ 进程从运行状态进入就绪状态的原因可能是( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 被选中占有处理机], [B. 等待某一事件], [C. 等待的事件已发生], [D. 时间片用完],
  )
+ 文件系统中, 目录管理的最基本功能是( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 实现虚拟存储], [B. 实现文件的按名存取], [C. 提高外存的读写速度], [D. 用于存储系统文件],
  )
+ 静态重定位是在作业( )中进行的。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 编译过程], [B. 链接过程], [C. 装入过程], [D. 执行过程],
  )
+ 一个进程从提交系统到完成的时间间隔称为( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 等待时间], [B. 周转时间], [C. 响应时间], [D. 完成时间],
  )
+ 当处理机没有将时间用在处理指令, 而都用在频繁地将进程换入换出时, 这种情况称为( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 页面置换], [B. 局部性原理], [C. 抖动], [D. 对换],
  )
+ 磁盘调度主要是为了优化( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 寻道时间], [B. 旋转延迟时间], [C. 传输时间], [D. 寻找磁盘的时间],
  )
+ UNIX 文件系统中的文件索引节点包含13个地址项, 其中`i.addr(0)~i.addr(9)`是直接地址, `i.addr(10)`是一级间接索引, `i.addr(11)`是二级间接索引, `i.addr(12)`是三级间接索引。假设盘块大小为4K, 那么各个索引块也采用`i.addr(0)~i.addr(10)`这11个地址项能够管理的最大文件是( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 40K], [B. 4M], [C. 40K+ 4M], [D. 40K+4M+4G],
  )
+ FAT16 采用16位来记录一个盘块地址, 假设一个盘块大小为4K, 那么能够管理的磁盘分区容量最大为( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 256G], [B. 256M], [C. 2G], [D. 2M],
  )

= 填空题 (共10题, 每题1分, 共10分)
#set enum(indent: 0.5cm, numbering: "1.")
+ 在分时系统中, 假设用户数目为50时, 为保证响应时间不超过2s, 此时系统的时间片最大应为 #uline(width: 4em) ms。
+ 有两个程序A、B, 它们使用同一个设备进行 I/O 操作, 并按 A、B 的优先次序执行, 每个程序的计算和I/O 操作时间如表1所示。假设调度时间可忽略不计, 请计算多道环境下它们的总运行时间是 #uline(width: 4em) ms。
  #figure(
    table(
      columns: (auto,) * 3,
      align: center,
      inset: 5pt,
      stroke: 0.5pt,
      [*程序操作*], [*A*], [*B*],
      [*计算*], [30], [60],
      [*I/O*], [40], [30],
      [*计算*], [10], [10],
    ),
    caption: [表1 程序运行时间表 (单位ms)],
  )
+ UNIX 系统采用的外存分配方式为 #uline(width: 10em), 索引结点中共设了13个地址项。
+ 用信号量S实现对系统中4台打印机的互斥使用, 若 S.value的当前值为-2, 表示S.L队列中有 #uline(width: 2em) 个等待进程。
+ 消息缓冲队列通信机制是通过内存中公用的 #uline(width: 8em) 进行进程通信。
+ 已知某分页系统, 主存容量为640K, 页面大小为1K, 对一个4页大的作业, 第0、1、2、3页被分配到内存的2、6、9、7块中。求: 将十进制的逻辑地址2985转换成物理地址是 #uline(width: 6em)。
+ 硬盘采用的I/O 设备的控制方式是 #uline(width: 8em) 方式。
+ 假设盘块的大小为1KB, 硬盘的大小为500MB, 采用显式链接分配时, 其FAT表项至少需要 #uline(width: 3em) 个二进制位。
+ 如果利用30行、16列的位示图来表示空闲盘块的状态, 假定行号、列号和盘块号均从1开始编号, 则在进行盘块分配时, 若第一次找到的空闲盘块 (即该位的值为“0”) 处于第8行、第15列, 则相应的盘块号为 #uline(width: 4em)。
+ 预防死锁的策略是破坏死锁产生的必要条件, 其中哪个条件是由资源的性质决定的, 而不应该被破坏的? #uline(width: 10em)

= 简答题 (共3题, 每题5分, 共15分)
#set enum(indent: 0.5cm, numbering: "1.")
+ 进程与程序的区别？
  #v(3em)
+ 什么是虚拟存储器？其具有哪些基本特征？
  #v(3em)
+ 什么是进程同步？同步机制应遵循的原则是什么？
  #v(3em)

= 算法综合题 (共6题, 共50分)
#set enum(indent: 0.5cm, numbering: "1.")
+ 假设一个系统有5个进程, 它们的到达时间和服务时间如表2所示, 忽略I/O及其他开销时间, 计算先来先服务 FCFS算法、高响应比优先 HRRN进行CPU调度, 请完成表3。(10分)【注: 以小数方式表示】
  #grid(
    columns: 2,
    gutter: 1fr,
    align: center + horizon,
    [
      #figure(
        table(
          columns: 3,
          stroke: 0.5pt,
          align: center,
          [*进程*], [*到达时间*], [*服务时间*],
          [A], [0], [3],
          [B], [2], [5],
          [C], [3], [4],
          [D], [5], [4],
          [E], [8], [2],
        ),
        caption: [表2 进程到达和服务时间],
      )
    ],
    [
      #figure(
        table(
          columns: 6,
          align: center,
          stroke: 0.5pt,
          inset: 4pt,
          [*调度算法*], [*进程A*], [*进程B*], [*进程C*], [*进程D*], [*进程E*],
          [*FCFS*], [], [], [], [], [],
          [完成时间], [], [], [], [], [],
          [周转时间], [], [], [], [], [],
          [带权周转时间], [], [], [], [], [],
          [*HRRN*], [], [], [], [], [],
          [完成时间], [], [], [], [], [],
          [周转时间], [], [], [], [], [],
          [带权周转时间], [], [], [], [], [],
        ),
        caption: [表3 调度结果 【注: 以小数方式表示】],
      )
    ],
  )
  #v(100%)

+ 系统中有(A, B, C, D)四种资源和五个进程。在银行家算法中, 某时刻出现下述资源分配情况时:
  #figure(
    table(
      columns: 4,
      align: center,
      stroke: 0.5pt,
      inset: 4pt,
      [*Process*], [*Allocation (A,B,C,D)*], [*Need (A,B,C,D)*], [*Available (A,B,C,D)*],
      [P0], [(0,0,3,2)], [(0,0,1,2)], [#stack(dir: ttb, spacing: 0.5em, align(center)[(1,6,2,2)])],
      [P1], [(1,0,0,0)], [(1,7,5,0)], [],
      [P2], [(1,3,5,4)], [(2,3,5,6)], [],
      [P3], [(0,3,3,2)], [(0,6,5,2)], [],
      [P4], [(0,0,1,4)], [(0,6,5,6)], [],
    ),
    caption: none,
  )
  *试问：*
  #enum(start: 1, numbering: "(1)")
  + 该状态是否安全？请写出分析过程。(5分)
  + 若进程 P2 提出请求 Request(1,2,2,2), 系统能否将资源分配给它？请写出分析过程。(3分)
  + 如果系统立即满足P2的请求, 系统是否会立即进入死锁状态？为什么？(2分)
  #v(3em)

+ 在一个请求页式存储系统中, 一个程序的页面走向为3,4,1,3,2,0,3,2,4,2,3,0,1,2, 并分别采用 FIFO、LRU页面置换算法。假设分配给该程序的存储块数M为4, 求出在访问过程中发生的缺页次数和缺页率。(写出具体分析过程, 缺页率可保留两位小数) (10分)
  #v(3em)

+ 假设有一个200个磁道 (编号为0-199) 的移动头磁盘, 请求队列中是一些随机请求, 它们按照到达的次序分别处于100、183、40、122、13、124、65、69、90、50。当前在55号磁道上。请给出按先来先服务 FCFS, 扫描 SCAN 算法 (规定, 扫描算法时, 先向磁道号减少的方向上移动) 进行磁盘调度时满足请求的次序, 并计算它们的平均寻道长度。(写出具体分析过程, 寻道长度以小数方式表示) (10分)
  #v(3em)

+ Linux系统中, 有一个共享文件, 它具有下列文件名：`/home/wang/test/work`、`/home/zhang/work`、`/home/sun/mydir/work`。试写出图1中的A、B、C、D、E的内容。(5分)
  #figure(caption: [文件共享示意图])[#canvas({
      import draw: *
      // Define nodes with proper positioning
      // Level 0 - Root
      rect((-0.75, 0), (0.75, 0.6), radius: 8pt, name: "root")
      content((0, 0.3), [#text(size: 12pt)[*Root*]])

      // Level 1
      let y1 = -1.8
      rect((-0.75, y1), (0.75, y1 + 0.6), radius: 8pt)
      content((0, y1 + 0.3), [#text(size: 11pt)[A]])

      // Level 2
      let y2 = -3.6
      // wang
      rect((-3.5, y2), (-1.5, y2 + 0.6), radius: 8pt)
      content((-2.5, y2 + 0.3), [#text(size: 11pt)[wang]])

      // zhang
      rect((-0.75, y2), (0.75, y2 + 0.6), radius: 8pt)
      content((0, y2 + 0.3), [#text(size: 11pt)[zhang]])

      // B
      rect((1.5, y2), (3.5, y2 + 0.6), radius: 8pt)
      content((2.5, y2 + 0.3), [#text(size: 11pt)[B]])

      // Level 3
      let y3 = -5.4
      // C
      rect((-3.5, y3), (-1.5, y3 + 0.6), radius: 8pt)
      content((-2.5, y3 + 0.3), [#text(size: 11pt)[C]])

      // E
      rect((-0.75, y3 - 0.3), (0.75, y3 + 0.3), radius: 8pt, name: "E")
      content((0, y3), [#text(size: 11pt)[E]])

      // D
      rect((1.5, y3), (3.5, y3 + 0.6), radius: 8pt)
      content((2.5, y3 + 0.3), [#text(size: 11pt)[D]])

      // Draw connections
      // Root to A
      line("root", (0, y1 + 0.6), mark: (end: ">"))

      // A to its children
      line((-0.3, y1), (-2.5, y2 + 0.6), mark: (end: ">"))
      line((0, y1), (0, y2 + 0.6), mark: (end: ">"))
      line((0.3, y1), (2.5, y2 + 0.6), mark: (end: ">"))

      // Level 2 to Level 3
      line((-2.5, y2), (-2.5, y3 + 0.6), mark: (end: ">"))
      line((0, y2), "E", mark: (end: ">"))
      line((2.5, y2), (2.5, y3 + 0.6), mark: (end: ">"))

      // Cross connections (dashed)
      line((-1.5, y3 + 0.3), "E", thickness: 1pt, dash: "dashed", mark: (end: ">"))
      line((1.5, y3 + 0.3), "E", thickness: 1pt, dash: "dashed", mark: (end: ">"))
    })
  ]

  #v(2em)

+ 在MS-DOS 中有一文件 A, A 依次占用 3, 6, 8, 10, 5 五个盘块。请画出 MS-DOS 文件系统中, 文件 A 在各盘块间的链接情况及 FAT 的情况。(5分)
  #v(3em)


= 程序设计题 (共1题, 每题10分, 共10分)
#set enum(indent: 0.5cm, numbering: "1.")
+ 假设有3个并发进程 P, Q, R, 其中P负责从输入设备上读入信息, 并传送给Q, Q将信息加工后传送给R, R负责打印输出。进程P, Q共享一个有m个缓冲区组成的缓冲池; 进程Q, R共享一个有n个缓冲区组成的缓冲池 (假设缓冲池足够大, 进程间每次传输信息的单位均小于等于缓冲区长度), 请用 PV 操作写出满足上述条件的并发程序。

#pagebreak()
// 参考答案部分
#align(center)[= 参考答案与解析]
#set heading(numbering: "1.1")
#set text(size: 8pt)

== 选择题
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
    columns: 15,
    stroke: 0.5pt,
    align: center,
    [*1*], [*2*], [*3*], [*4*], [*5*], [*6*], [*7*], [*8*], [*9*], [*10*], [*11*], [*12*], [*13*], [*14*], [*15*],
    [B], [A], [D], [D], [C], [D], [D], [D], [B], [C], [B], [C], [A], [C], [B],
  )]

#answer_block(
  "1",
  [B],
)[本题考查页式存储管理的地址结构。页式存储管理中，逻辑地址由页号和页内偏移量两部分组成

  在存储管理中，*一维地址*和*二维地址*的区别主要取决于内存管理方式（页式 vs 段式）以及地址的划分逻辑。以下是具体分析：

  *1. 一维地址（线性地址）*

  - *页式存储管理*（如题目中的场景）
    逻辑地址被划分为：
    *页号（Page Number） + 页内偏移量（Offset）*
    虽然形式上看似两部分，但程序生成的地址是连续的、一维的线性空间，由硬件/操作系统通过页表隐式分割，*对用户透明*。
    *本质是一维地址*，因为程序视角无需关心分页机制。

  - *实际例子*：
    - 现代操作系统的虚拟内存（如Linux、Windows的分页机制）。
    - CPU生成的逻辑地址（如32位系统的`0x00000000`~`0xFFFFFFFF`）。

  *特点：*
  - 程序看到的地址空间是连续的、无结构的数字序列。
  - 分页机制由硬件自动管理，用户无需感知页号/偏移量的划分。

  *2. 二维地址*

  - *段式存储管理*
    逻辑地址显式划分为：
    *段号（Segment Number） + 段内偏移量（Offset）*
    程序需要显式指定段和偏移量（如汇编中的`DS:0x0040`），*用户或编译器需主动管理分段*。

  - *实际例子*：
    - x86架构的实模式（如`CS:IP`、`DS:SI`等段寄存器+偏移量）。
    - 早期分段内存管理（如Intel 8086）。

  *特点：*
  - 地址由两部分显式构成，程序需感知段的存在。
  - 支持模块化内存管理（代码段、数据段等），但易产生外部碎片。

  *关键对比*
  #table(
    columns: 5,
    align: center,
    stroke: 0.5pt,
    [*管理方式*], [*地址构成*], [*用户感知*], [*典型应用*], [*维度*],
    [页式], [页号+偏移], [透明], [现代虚拟内存], [一维],
    [段式], [段号+偏移], [显式], [早期分段系统], [二维],
  )
]
#answer_block(
  "2",
  [A],
)[本题考查磁盘空间管理方法。成组链接法是一种用于管理磁盘空闲块的高效方法，主要用于分配和回收磁盘空间。其他选项如驱动调度（如SCAN、CSCAN）、目录查找（如哈希、B树）、页面调度（如FIFO、LRU）是不同的操作系统功能。]

#answer_block(
  "3",
  [D],
)[本题考查通道的概念。通道是独立于CPU的专门负责数据输入输出传输控制的I/O专用处理器，它可以控制外部设备与内存之间的数据交换，从而解放CPU。]

#answer_block(
  "4",
  [D],
)[本题考查并发进程间的关系。并发进程在执行过程中可能会共享资源或需要合作完成任务，因此它们之间可能存在因共享资源而产生的互斥关系，或因合作而产生的同步关系。它们不一定总是互斥或同步，也可能在某些情况下彼此独立。]

#answer_block(
  "5",
  [C],
)[本题考查请求分页管理中的页表项。页表中的状态位（有效位/驻留位）用于指示该页当前是否已经调入内存。修改位指示页面是否被修改，访问位指示页面是否被访问，用于页面置换算法。]

#answer_block(
  "6",
  [D],
)[本题考查可变分区存储管理中的空闲区合并。当回收的作业区其上下都有相邻的空闲区时，这三个区（上邻空闲区、回收区、下邻空闲区）会合并成一个大的空闲区，使得总的空闲区数目减2后加1，即净减1。如果只有上邻或下邻，则数目不变。如果均无，则数目加1。]

#answer_block(
  "7",
  [D],
)[本题考查作业调度算法的特性。多级反馈队列调度算法通过设置多个不同优先级的队列，并结合时间片轮转，既能让短作业在较高优先级队列中快速完成，也能让长作业在较低优先级队列中得到服务，避免饿死，因此兼顾了短作业和长作业。]

#answer_block(
  "8",
  [D],
)[本题考查进程状态转换。进程从运行状态进入就绪状态，通常是因为分配给该进程的时间片已经用完，CPU被调度程序分配给其他进程，而该进程并未阻塞，仍具备运行条件。等待某一事件导致进入阻塞态；等待事件发生导致从阻塞态进入就绪态；被选中占有处理机导致从就绪态进入运行态。]

#answer_block(
  "9",
  [B],
)[本题考查文件系统的目录管理功能。目录管理的核心功能是组织和管理文件，提供文件名到文件物理存储位置的映射，即实现文件的“按名存取”。]

#answer_block(
  "10",
  [C],
)[本题考查重定位的方式。静态重定位是在作业装入内存时，由装入程序将指令和数据中的逻辑地址转换为物理地址，且装入后不能再移动。编译和链接过程处理的是符号地址和相对地址。]

#answer_block(
  "11",
  [B],
)[本题考查作业调度中的时间度量。周转时间是指从作业提交给系统开始，到作业完成为止的全部时间，包括等待调度时间、在就绪队列中等待CPU的时间、CPU执行时间以及I/O操作时间。]

#answer_block(
  "12",
  [C],
)[本题考查系统性能问题。抖动（Thrashing）是指在请求分页系统中，由于分配给进程的物理页面太少，导致进程运行频繁发生缺页中断，大部分时间都用于页面置换，而不是有效执行指令，使得系统效率急剧下降的现象。]

#answer_block(
  "13",
  [A],
)[本题考查磁盘调度的目标。磁盘I/O操作的时间主要由寻道时间、旋转延迟时间和数据传输时间组成。其中寻道时间是磁头移动到目标磁道所需的时间，通常是占比最大的部分，因此磁盘调度的主要目标是减少平均寻道时间。]

#answer_block("14", [C])[
  本题考查UNIX文件系统的文件大小计算。
  直接地址：i.addr(0)\~i.addr(9) 共10项，每项指向一个盘块，大小为 $10 times 4K = 40K$。
  一级间接索引：i.addr(10) 指向一个索引块，该索引块大小为4K。每个地址项假设为4字节，则一个索引块可存放 $(4 times 1024) / 4 = 1024$ 个盘块地址。所以一级间接索引能管理 $1024 times 4K = 4M$。
  二级间接索引：i.addr(11) 指向一个二级索引块，该块又指向1024个一级索引块，每个一级索引块再指向1024个数据块。所以二级间接索引能管理 $1024 times 1024 times 4K = 4G$。
  三级间接索引：i.addr(12) 同理能管理 $1024 times 4G = 4T$。
  题目给的答案D是 $40K+4M+4G$，这意味着它考虑了i.addr(0)到i.addr(11)这12项 (10个直接，1个一级间接，1个二级间接)。
  #figure(caption: [UNIX文件系统索引节点结构])[#set text(size: 5pt)
    #canvas({
      import draw: *
      scale(0.6)

      // 设置画布
      set-style(content: (padding: 0.1))

      // 画索引节点
      rect((0, 0), (3, 8), stroke: 2pt)
      content((1.5, 7.5), [*索引节点 (inode)*])

      // 直接地址项 i.addr(0) ~ i.addr(9)
      for i in range(10) {
        let y = 6.5 - i * 0.6
        rect((0.2, y - 0.25), (2.8, y + 0.25), stroke: 1pt)
        content((1.5, y), [i.addr(#i)])

        // 直接指向数据块
        rect((4, y - 0.25), (6, y + 0.25), stroke: 1pt)
        content((5, y), [数据块])

        // 连接线
        line((2.8, y), (4, y), mark: (end: ">"))
      }

      // 一级间接索引 i.addr(10)
      let y10 = 6.5 - 10 * 0.6
      rect((0.2, y10 - 0.25), (2.8, y10 + 0.25), stroke: 1pt)
      content((1.5, y10), [i.addr(10)])
      content((1.5, y10 - 0.9), [一级间接])

      // 一级间接索引块
      rect((4, y10 - 1.8), (6, y10 + 0.2), stroke: 1pt)
      content((5, y10 - 0.1), [索引块])
      content((5, y10 - 0.5), [1024个])
      content((5, y10 - 0.9), [地址项])
      content((5, y10 - 1.3), [每项4字节])

      line((2.8, y10), (4, y10 - 0.8), mark: (end: ">"))

      // 从一级间接索引块指向数据块
      for i in range(3) {
        let x = 7 + i * 1.5
        rect((x, y10 - 0.75), (x + 1, y10 - 0.25), stroke: 1pt)
        content((x + 0.5, y10 - 0.5), [数据块])
        line((6, y10 - 0.8), (x, y10 - 0.5), mark: (end: ">"))
      }
      content((8.5, y10 - 1.2), [... 共1024个数据块])
    })
  ]
]

#answer_block(
  "15",
  [B],
)[本题考查FAT16文件系统的容量计算。FAT16使用16位记录盘块地址，因此最多可以表示 $2^16 = 65536$ 个盘块。每个盘块大小为4K，所以最大分区容量为 $2^16 times 4K = 65536 times 4 times 1024 #text(" Bytes") = 268435456 #text(" Bytes") = 256M$。原答案是2G，可能误解了。]

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
#fill_answer_block(
  "1",
  [`40`],
  points: "1分",
)[为保证响应时间不超过2s (2000ms)，对于50个用户，在理想的轮转情况下，每个用户在一个周期内都能获得一次CPU时间。因此，时间片最大应为 $(2000 #text("ms")) / 50 = 40 #text("ms")$。]

#fill_answer_block("2", [`110`], points: "1分")[
  程序 A 开始计算（30 ms），同时程序 B 等待。
  程序 A 进入 I/O 操作（40 ms），此时程序 B 开始计算（60 ms）。
  程序 B 进入 I/O 操作（30 ms），此时程序 A 完成最后的计算（10 ms）。
  程序 B 完成最后的计算（10 ms）。]

#fill_answer_block(
  "3",
  [混合索引分配方式 (或 多级索引分配)],
  points: "1分",
)[UNIX系统采用的是混合索引分配方式，结合了直接地址、一级间接地址、二级间接地址和三级间接地址来管理文件块。]

#fill_answer_block(
  "4",
  [`2`],
  points: "1分",
)[信号量S.value的含义：若S.value $>= 0$，表示可用资源的数量；若S.value $< 0$，其绝对值表示等待队列中等待该资源的进程个数。S.value = -2，表示有2个进程在等待打印机。]

#fill_answer_block(
  "5",
  [消息缓冲区 (或 共享存储区/信箱)],
  points: "1分",
)[消息缓冲队列通信机制属于间接通信方式，进程通过读写内核中提供的一个公用的消息缓冲区（也称信箱或共享内存区域中的特定结构）来进行通信。]

#fill_answer_block("6", [`10153`], points: "1分")[
  页面大小为1K (1024字节)。逻辑地址2985。
  页号 P = $floor(2985 / 1024) = floor(2.915) = 2$。
  页内偏移量 W = $2985 mod 1024 = 2985 - 2 times 1024 = 2985 - 2048 = 937$。
  题目给出的映射关系是：第0页->块2，第1页->块6，第2页->块9，第3页->块7。
  逻辑页2对应物理块9。
  物理地址 = 块号 $times$ 页面大小 + 页内偏移量 = $9 times 1024 + 937 = 9216 + 937 = 10153$。
  原答案是10052, 不知道怎么算的🤓
]

#fill_answer_block(
  "7",
  [DMA (直接存储器存取)],
  points: "1分",
)[硬盘等高速I/O设备通常采用DMA（Direct Memory Access）方式进行数据传输，以减少CPU的干预，提高系统效率。]

#fill_answer_block("8", [`20`], points: "1分")[
  盘块大小 = 1KB。硬盘大小 = 500MB。
  总盘块数 = $(500M B ) / ( 1K B) = (500 times 1024 K B) / (1K B) = 512000$ 个盘块。
  FAT表项需要能够表示所有盘块的地址。设需要n个二进制位，则 $2^n >= 512000$。
  $2^18 = 262144$。
  $2^19 = 524288$。
  因此，至少需要19个二进制位。]

#fill_answer_block("9", [`127`], points: "1分")[位示图共30行、16列。行号、列号和盘块号均从1开始。
  第8行、第15列的盘块号计算公式为：盘块号 = (行号 - 1) $times$ 每行列数 + 列号。
  盘块号 = $(8 - 1) times 16 + 15 = 7 times 16 + 15 = 112 + 15 = 127$。]

#fill_answer_block(
  "10",
  [互斥条件],
  points: "1分",
)[死锁产生的四个必要条件是：互斥条件、请求和保持条件、不可剥夺条件、循环等待条件。其中，互斥条件是由许多资源的固有特性（如打印机一次只能一个进程使用）决定的，一般不能破坏它，否则无法保证数据的一致性和正确性。]

== 简答题 (共3题, 每题5分, 共15分)
#let essay_answer_block(num, answer, score: "", isbreakable: true) = {
  block(
    width: 100%,
    fill: rgb("#F0FFF0"),
    stroke: (left: 3pt + rgb("#20C997")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
    breakable: isbreakable,
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
  [
    进程与程序的主要区别如下：
    1. *定义：* 程序是静态的指令集合，是一组有序的指令代码，存储在磁盘等介质上。进程是程序的一次动态执行过程，是操作系统进行资源分配和调度的基本单位。
    2. *状态：* 程序是静态的，没有状态。进程是动态的，具有多种状态（如创建、就绪、运行、阻塞、终止）。
    3. *生命周期：* 程序可以永久存在。进程有生命周期，会创建、执行和消亡。
    4. *组成：* 程序主要指代码。进程由程序段、数据段和进程控制块（PCB）组成。PCB是进程存在的唯一标志。
    5. *对应关系：* 一个程序可以对应多个进程（例如运行一个程序多次），一个进程至少包含一个程序段。
  ],
  score: "5分",
)

#essay_answer_block(
  "2",
  isbreakable: false,
  [
    *什么是虚拟存储器：*
    虚拟存储器是指具有请求调入功能和置换功能，能从逻辑上对内存容量进行扩充的一种存储器系统。其逻辑容量由CPU的寻址范围决定，其运行速度接近于主存速度，而成本又接近于辅存成本。它使得用户编程不受实际物理内存大小的限制，程序可以比物理内存大。

    *基本特征：*
    1. *多次性：* 一个作业被分成多次调入内存运行，无需一次全部装入。
    2. *对换性（或置换性）：* 作业运行时无需一直常驻内存，允许将暂时不用的程序或数据部分调出到外存，需要时再调入。
    3. *虚拟性：* 能够从逻辑上扩充内存容量，用户看到的内存容量远大于实际物理内存容量。
  ],
  score: "5分",
)

#essay_answer_block(
  "3",
  [
    *什么是进程同步：*
    进程同步是指在多道程序环境下，为了协调多个并发进程的执行顺序，确保它们能有效地共享资源和相互协作，从而避免出现数据不一致或运行结果错误等问题，而对进程的执行次序所进行的一种协调。

    *同步机制应遵循的原则：*
    1. *空闲让进：* 当没有进程处于临界区时，任何一个请求进入临界区的进程都应能立即进入。
    2. *忙则等待：* 当已有进程进入其临界区时，其他试图进入临界区的进程必须等待。
    3. *有限等待：* 对要求访问临界资源的进程，应保证其在有限时间内能进入临界区，避免“饿死”。
    4. *让权等待（可选，但提倡）：* 当进程不能进入其临界区时，应立即释放处理机，以免进程陷入“忙等”。
  ],
  score: "5分",
)

== 算法综合题 (共6题, 共50分)
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
    *解：*
    进程信息：A(0,3), B(2,5), C(3,4), D(5,4), E(8,2)
    周转时间 = 完成时间 - 到达时间
    带权周转时间 = 周转时间 / 服务时间

    *1. 先来先服务 (FCFS) 调度算法：*
    调度顺序：A -> B -> C -> D -> E
    - 进程A: 到达0, 服务3. 完成时间 = 3. 周转时间 = $3-0=3$. 带权周转时间 = $3 / 3 = 1.0$.
    - 进程B: 到达2, 服务5. 开始时间 = 3. 完成时间 = $3+5=8$. 周转时间 = $8-2=6$. 带权周转时间 = $6 / 5 = 1.2$.
    - 进程C: 到达3, 服务4. 开始时间 = 8. 完成时间 = $8+4=12$. 周转时间 = $12-3=9$. 带权周转时间 = $9 / 4 = 2.25$.
    - 进程D: 到达5, 服务4. 开始时间 = 12. 完成时间 = $12+4=16$. 周转时间 = $16-5=11$. 带权周转时间 = $11 / 4 = 2.75$.
    - 进程E: 到达8, 服务2. 开始时间 = 16. 完成时间 = $16+2=18$. 周转时间 = $18-8=10$. 带权周转时间 = $10 / 2 = 5.0$.

    *2. 高响应比优先 (HRRN) 调度算法：*
    响应比 = (等待时间 + 服务时间) / 服务时间
    - 时间0: 只有A到达，A执行。
      A: 完成时间 = 3. 周转时间 = $3-0=3$. 带权周转时间 = $3 / 3 = 1.0$.
    - 时间3: A完成。B(到达2, 等待1), C(到达3, 等待0)已到达。
      RR(B) = $(1+5) / 5 = 1.2$.
      RR(C) = $(0+4) / 4 = 1.0$.
      选择B执行。
      B: 开始3, 完成 $3+5=8$. 周转时间 = $8-2=6$. 带权周转时间 = $6 / 5 = 1.2$.
    - 时间8: B完成。C(到达3, 等待5), D(到达5, 等待3), E(到达8, 等待0)已到达。
      RR(C) = $(5+4) / 4 = 2.25$.
      RR(D) = $(3+4) / 4 = 1.75$.
      RR(E) = $(0+2) / 2 = 1.0$.
      选择C执行。
      C: 开始8, 完成 $8+4=12$. 周转时间 = $12-3=9$. 带权周转时间 = $9 / 4 = 2.25$.
    - 时间12: C完成。D(到达5, 等待7), E(到达8, 等待4)已到达。
      RR(D) = $(7+4) / 4 = 2.75$.
      RR(E) = $(4+2) / 2 = 3.0$.
      选择E执行。
      E: 开始12, 完成 $12+2=14$. 周转时间 = $14-8=6$. 带权周转时间 = $6 / 2 = 3.0$.
    - 时间14: E完成。只剩D(到达5, 等待9)。
      选择D执行。
      D: 开始14, 完成 $14+4=18$. 周转时间 = $18-5=13$. 带权周转时间 = $13 / 4 = 3.25$.

    #figure(caption: [表3 调度结果 (以小数方式表示)])[#table(
        columns: 6,
        align: center,
        stroke: 0.5pt,
        inset: 4pt,
        [*调度算法*], [*进程A*], [*进程B*], [*进程C*], [*进程D*], [*进程E*],
        [*FCFS*], [], [], [], [], [],
        [完成时间], [3.0], [8.0], [12.0], [16.0], [18.0],
        [周转时间], [3.0], [6.0], [9.0], [11.0], [10.0],
        [带权周转时间], [1.0], [1.2], [2.25], [2.75], [5.0],
        [*HRRN*], [], [], [], [], [],
        [完成时间], [3.0], [8.0], [12.0], [18.0], [14.0], // D and E order changed based on calculation
        [周转时间], [3.0], [6.0], [9.0], [13.0], [6.0],
        [带权周转时间], [1.0], [1.2], [2.25], [3.25], [3.0],
      )]
  ],
  [结果见上表],
  score: "共10分",
)

#calc_answer_block(
  "2",
  [
    初始状态：Available = (1,6,2,2)
    Allocation: P0(0,0,3,2), P1(1,0,0,0), P2(1,3,5,4), P3(0,3,3,2), P4(0,0,1,4)
    Need: P0(0,0,1,2), P1(1,7,5,0), P2(2,3,5,6), P3(0,6,5,2), P4(0,6,5,6)

    *(1) 该状态是否安全？*
    *解：* 使用安全性算法检查。
    Work = Available = (1,6,2,2); Finish = [F,F,F,F,F]
    - 步骤1: P0. Need P0(0,0,1,2) $<=$ Work(1,6,2,2). True.
      Work = (1,6,2,2) + (0,0,3,2) = (1,6,5,4). Finish[P0]=T. 安全序列: \<P0>
    - 步骤2: P1. Need P1(1,7,5,0) $<=$ Work(1,6,5,4). False (7>6).
    - 步骤3: P2. Need P2(2,3,5,6) $<=$ Work(1,6,5,4). False (2>1 or 6>4).
    - 步骤4: P3. Need P3(0,6,5,2) $<=$ Work(1,6,5,4). True.
      Work = (1,6,5,4) + (0,3,3,2) = (1,9,8,6). Finish[P3]=T. 安全序列: \<P0,P3>
    - 步骤5: P4. Need P4(0,6,5,6) $<=$ Work(1,9,8,6). True.
      Work = (1,9,8,6) + (0,0,1,4) = (1,9,9,10). Finish[P4]=T. 安全序列: \<P0,P3,P4>
    - 步骤6: P1. Need P1(1,7,5,0) $<=$ Work(1,9,9,10). True.
      Work = (1,9,9,10) + (1,0,0,0) = (2,9,9,10). Finish[P1]=T. 安全序列: \<P0,P3,P4,P1>
    - 步骤7: P2. Need P2(2,3,5,6) $<=$ Work(2,9,9,10). True.
      Work = (2,9,9,10) + (1,3,5,4) = (3,12,14,14). Finish[P2]=T. 安全序列: \<P0,P3,P4,P1,P2>
    所有进程均可完成，该状态安全。安全序列例如 P0, P3, P4, P1, P2。
    #line(length: 100%, stroke: 0.5pt)
    *(2) 若进程 P2 提出请求 Request(1,2,2,2), 系统能否将资源分配给它？*
    *解：*
    - 检查 Request_P2(1,2,2,2) $<=$ Need_P2(2,3,5,6). True.
    - 检查 Request_P2(1,2,2,2) $<=$ Available(1,6,2,2). True.
    - 假设分配：
      New_Available = (1,6,2,2) - (1,2,2,2) = (0,4,0,0).
      New_Allocation_P2 = (1,3,5,4) + (1,2,2,2) = (2,5,7,6).
      New_Need_P2 = (2,3,5,6) - (1,2,2,2) = (1,1,3,4).
    - 对新状态进行安全性检查：Work = (0,4,0,0). Need' P2(1,1,3,4).
      P0: Need(0,0,1,2) $<=$ Work(0,4,0,0) -> False (1>0).
      P1: Need(1,7,5,0) $<=$ Work(0,4,0,0) -> False (1>0).
      P2': Need(1,1,3,4) $<=$ Work(0,4,0,0) -> False (1>0).
      P3: Need(0,6,5,2) $<=$ Work(0,4,0,0) -> False (6>4).
      P4: Need(0,6,5,6) $<=$ Work(0,4,0,0) -> False (6>4).
      新状态不安全。系统不能分配。
    #line(length: 100%, stroke: 0.5pt)
    *(3) 如果系统立即满足P2的请求, 系统是否会立即进入死锁状态？为什么？*
    *解：* 不会立即进入死锁状态。不安全状态意味着存在进入死锁的风险，但并非立即死锁。死锁是进程循环等待资源且无法继续执行的状态。银行家算法的目的是避免进入不安全状态。
  ],
  [
    (1) 该状态安全, 安全序列例如 P0, P3, P4, P1, P2。
    (2) 系统不能分配，因为分配后系统将进入不安全状态。
    (3) 不会立即进入死锁状态，但系统进入不安全状态，有发生死锁的风险。
  ],
  score: "共10分 (5+3+2)",
)

#calc_answer_block(
  "3",
  [
    页面走向: 3,4,1,3,2,0,3,2,4,2,3,0,1,2 (14次)。物理块 M=4。

    *1. FIFO 页面置换算法：*
    #table(
      columns: 4,
      align: (center, left, center, center),
      stroke: 0.5pt,
      [*访问序列*], [*内存状态 (队头->队尾)*], [*是否缺页*], [*换出页*],
      [3], [3], [Y], [-],
      [4], [3, 4], [Y], [-],
      [1], [3, 4, 1], [Y], [-],
      [3], [3, 4, 1], [N], [-],
      [2], [3, 4, 1, 2], [Y], [-],
      [0], [4, 1, 2, 0], [Y], [3],
      [3], [1, 2, 0, 3], [Y], [4],
      [2], [1, 2, 0, 3], [N], [-],
      [4], [2, 0, 3, 4], [Y], [1],
      [2], [2, 0, 3, 4], [N], [-],
      [3], [2, 0, 3, 4], [N], [-],
      [0], [2, 0, 3, 4], [N], [-],
      [1], [0, 3, 4, 1], [Y], [2],
      [2], [3, 4, 1, 2], [Y], [0],
    )
    FIFO缺页次数: 9次。 缺页率: $9 / 14 approx 0.64$.

    *2. LRU 页面置换算法：* (栈底为最久未使用，栈顶为最近使用)
    #table(
      columns: 4,
      align: (center, left, center, center),
      stroke: 0.5pt,
      [*访问序列*], [*内存状态 (栈底->栈顶)*], [*是否缺页*], [*换出页*],
      [3], [3], [Y], [-],
      [4], [3, 4], [Y], [-],
      [1], [3, 4, 1], [Y], [-],
      [3], [4, 1, 3], [N], [-],
      [2], [4, 1, 3, 2], [Y], [-],
      [0], [1, 3, 2, 0], [Y], [4],
      [3], [1, 2, 0, 3], [N], [-],
      [2], [1, 0, 3, 2], [N], [-],
      [4], [0, 3, 2, 4], [Y], [1],
      [2], [0, 3, 4, 2], [N], [-],
      [3], [0, 4, 2, 3], [N], [-],
      [0], [4, 2, 3, 0], [N], [-],
      [1], [2, 3, 0, 1], [Y], [4],
      [2], [3, 0, 1, 2], [N], [-],
    )
    LRU缺页次数: 7次。 缺页率: $7 / 14 = 0.50$.
  ],
  [
    *FIFO算法：* 缺页次数：9次。 缺页率：$9 / 14 approx 0.64$。
    *LRU算法：* 缺页次数：7次。 缺页率：$7 / 14 = 0.50$。
  ],
  score: "共10分",
)

#calc_answer_block(
  "4",
  [
    磁道0-199。当前55。请求队列: 100, 183, 40, 122, 13, 124, 65, 69, 90, 50.
    SCAN先向磁道号减少方向。

    *1. FCFS算法：*
    服务次序: 55 -> 100 -> 183 -> 40 -> 122 -> 13 -> 124 -> 65 -> 69 -> 90 -> 50
    寻道长度: $|100-55| + |183-100| + |40-183| + |122-40| + |13-122| + |124-13| + |65-124| + |69-65| + |90-69| + |50-90|$
    $= 45 + 83 + 143 + 82 + 109 + 111 + 59 + 4 + 21 + 40 = 697$道。
    平均寻道长度 = $697 / 10 = 69.7$道。

    *2. SCAN算法 (先向磁道号减少方向)：*
    服务次序: 55 -> 50 -> 40 -> 13 -> 0 (到达边界) -> 65 -> 69 -> 90 -> 100 -> 122 -> 124 -> 183
    寻道长度: $(55-50) + (50-40) + (40-13) + (13-0) + (65-0) + (69-65) + (90-69) + (100-90) + (122-100) + (124-122) + (183-124)$
    $= 5 + 10 + 27 + 13 + 65 + 4 + 21 + 10 + 22 + 2 + 59 = 238$道。
    (Alternatively: $(55-0) + (183-0) = 55 + 183 = 238$道)
    平均寻道长度 = $238 / 10 = 23.8$道。
  ],
  [
    *FCFS算法：* 服务次序：55 -> 100 -> 183 -> 40 -> 122 -> 13 -> 124 -> 65 -> 69 -> 90 -> 50. 总寻道长度：697道。平均寻道长度：$69.7$道。
    *SCAN算法：* 服务次序：55 -> 50 -> 40 -> 13 -> 0 -> 65 -> 69 -> 90 -> 100 -> 122 -> 124 -> 183. 总寻道长度：238道。平均寻道长度：$23.8$道。
  ],
  score: "共10分",
)

#essay_answer_block(
  "5",
  [
    根据文件路径和图示的目录结构：
    - A 是 `home` (因为路径如 `/home/wang/...`)
    - B 是 `sun` (因为路径如 `/home/sun/...` 且 A 下有 wang, zhang, B)
    - C 是 `test` (因为路径 `/home/wang/test/work` 且 wang 下是 C)
    - D 是 `mydir` (因为路径 `/home/sun/mydir/work` 且 sun 下是 D)
    - E 是共享文件 `work` 的i-node。

    所以：
    A: `home`
    B: `sun`
    C: `test`
    D: `mydir`
    E: `work` (文件i-node)
  ],
  score: "5分",
)

#essay_answer_block(
  "6",
  [
    文件A依次占用磁盘块号：3, 6, 8, 10, 5。
    MS-DOS 文件系统使用文件分配表 (FAT) 来链接文件的各个盘块。


    #figure(caption: [MS-DOS 文件系统中文件A的FAT链接示意图])[
      #canvas({
        import draw: *
        // --- 1. 设置与常量定义 ---
        let canvas-padding = 0.1
        set-style(content: (padding: canvas-padding))
        // scale(0.9)  // 缩放整体图形

        // 颜色定义 - 改为黑白灰度
        let color-dir-bg = rgb("#F0F0F0") // 浅灰
        let color-dir-start-bg = rgb("#E0E0E0") // 中浅灰
        let color-fat-highlight = rgb("#D0D0D0") // 中灰
        let color-fat-default = rgb("#FFFFFF") // 白色
        let color-block-data = rgb("#E8E8E8") // 浅灰
        let color-block-eof = rgb("#C0C0C0") // 深灰
        let color-arrow-dir = rgb("#000000") // 黑色
        let color-arrow-fat = rgb("#000000") // 黑色
        let color-legend-bg = rgb("#F8F8F8") // 极浅灰

        // 描边与字体
        let stroke-default = 1pt + black
        let stroke-thin = 0.5pt + black
        let stroke-arrow = 1.5pt + black
        let stroke-thick = 2pt + black
        let font-size-small = 8pt
        let font-size-fat = 9pt
        let font-size-normal = 10pt
        let font-size-title = 11pt
        let font-weight-bold = "bold"

        // 布局参数 - 重新调整整体布局
        let dir-entry-y-top = 6.5
        let dir-entry-height = 0.8
        let dir-entry-main-width = 2.8
        let dir-entry-start-width = 1.8
        let dir-entry-total-width = dir-entry-main-width + dir-entry-start-width
        let dir-entry-y-center = dir-entry-y-top + dir-entry-height / 2
        let dir-entry-y-bottom = dir-entry-y-top + dir-entry-height

        let fat-title-pos-y = 5.5
        let fat-start-y-center = 4.8
        let fat-cell-height = 0.3 // 增加单元格高度
        let fat-y-step = 0.35 // 增加行间距
        let fat-idx-width = 1.2 // 增加索引列宽度
        let fat-content-width = 1.8 // 增加内容列宽度
        let fat-table-x-start = 0.5
        let fat-table-x-end = fat-table-x-start + fat-idx-width + fat-content-width

        let block-title-pos-y = 5.5
        let block-y-center = 3.2
        let block-width = 1.1
        let block-height = 0.5
        let block-start-x = 6.5 // 向右移动磁盘块，为更大的FAT表让位
        let block-h-gap = 0.7

        let legend-y = -0.5 // 向下移动图例
        let legend-height = 0.8

        // 存储关键坐标点
        let fat-entry-link-points = ()
        let block-link-points-top = ()
        let block-link-points-bottom = ()
        let block-centers = ()

        // --- 2. 辅助函数 ---
        let draw-labelled-rect(
          p1,
          p2,
          fill-color,
          text-content,
          text-size: font-size-fat,
          text-weight: "regular",
          rect-stroke: stroke-default,
        ) = {
          rect(p1, p2, stroke: rect-stroke, fill: fill-color)
          let (x1, y1) = p1
          let (x2, y2) = p2
          content(
            ((x1 + x2) / 2, (y1 + y2) / 2),
            text(size: text-size, weight: text-weight, fill: black)[#text-content],
          )
        }

        // --- 3. 画目录条目 ---
        let dir-main-p1 = (fat-table-x-start, dir-entry-y-top)
        let dir-main-p2 = (fat-table-x-start + dir-entry-main-width, dir-entry-y-bottom)
        draw-labelled-rect(
          dir-main-p1,
          dir-main-p2,
          color-dir-bg,
          [文件A目录项],
          text-size: font-size-normal,
          text-weight: font-weight-bold,
        )

        let dir-start-p1 = (fat-table-x-start + dir-entry-main-width, dir-entry-y-top)
        let dir-start-p2 = (fat-table-x-start + dir-entry-total-width, dir-entry-y-bottom)
        draw-labelled-rect(
          dir-start-p1,
          dir-start-p2,
          color-dir-start-bg,
          [起始块: 3],
          text-size: font-size-normal,
          text-weight: font-weight-bold,
        )

        let dir-start-block-link-from-x = (dir-start-p1.at(0) + dir-start-p2.at(0)) / 2
        let dir-start-block-link-from-y = dir-start-p1.at(1)

        // --- 4. 画FAT表 ---
        content(
          (fat-table-x-start + (fat-idx-width + fat-content-width) / 2, fat-title-pos-y),
          text(weight: font-weight-bold, size: font-size-title)[FAT 表],
        )

        // FAT表头 - 使用更大的尺寸
        draw-labelled-rect(
          (fat-table-x-start, fat-start-y-center + fat-cell-height),
          (fat-table-x-start + fat-idx-width, fat-start-y-center + fat-cell-height * 2),
          rgb("#CCCCCC"), // 深灰替代原来的颜色
          text(size: 7pt)[物理块号],
          text-weight: font-weight-bold,
          text-size: font-size-fat,
        )
        draw-labelled-rect(
          (fat-table-x-start + fat-idx-width, fat-start-y-center + fat-cell-height),
          (fat-table-x-end, fat-start-y-center + fat-cell-height * 2),
          rgb("#CCCCCC"), // 深灰替代原来的颜色
          [内容],
          text-weight: font-weight-bold,
          text-size: font-size-fat,
        )

        let fat_entries = (
          (0, "..."),
          (1, "..."),
          (2, "其他"),
          (3, "6"),
          (4, "其他"),
          (5, "EOF"),
          (6, "8"),
          (7, "其他"),
          (8, "10"),
          (9, "其他"),
          (10, "5"),
          (11, "..."),
        )

        for (i, (idx, content_text)) in fat_entries.enumerate() {
          let current-y-center = fat-start-y-center - i * fat-y-step
          let cell-top-y = current-y-center - fat-cell-height / 2
          let cell-bottom-y = current-y-center + fat-cell-height / 2

          let color = if content_text in ("6", "8", "10", "5", "EOF") {
            color-fat-highlight
          } else {
            color-fat-default
          }

          let text-weight = if content_text in ("6", "8", "10", "5", "EOF") {
            font-weight-bold
          } else {
            "regular"
          }

          // FAT索引单元格
          draw-labelled-rect(
            (fat-table-x-start, cell-top-y),
            (fat-table-x-start + fat-idx-width, cell-bottom-y),
            color,
            [#idx],
            rect-stroke: stroke-thin,
            text-size: font-size-fat, // 使用更大的字体
            text-weight: text-weight,
          )

          // FAT内容单元格
          draw-labelled-rect(
            (fat-table-x-start + fat-idx-width, cell-top-y),
            (fat-table-x-end, cell-bottom-y),
            color,
            [#content_text],
            rect-stroke: stroke-thin,
            text-size: font-size-fat, // 使用更大的字体
            text-weight: text-weight,
          )

          // 存储FAT表项右侧连接点
          fat-entry-link-points.push((fat-table-x-end, current-y-center))
        }

        // --- 5. 画磁盘块链接 ---
        content(
          (block-start-x + 4, block-title-pos-y - 1),
          text(weight: font-weight-bold, size: font-size-title)[磁盘块链接关系],
        )

        let disk_blocks_data = (3, 6, 8, 10, 5)
        for (i, block_num) in disk_blocks_data.enumerate() {
          let current-block-x-start = block-start-x + i * (block-width + block-h-gap)
          let current-block-x-center = current-block-x-start + block-width / 2
          let block-top-y = block-y-center - block-height / 2
          let block-bottom-y = block-y-center + block-height / 2

          // 存储连接点
          block-link-points-top.push((current-block-x-center, block-top-y))
          block-link-points-bottom.push((current-block-x-center, block-bottom-y))
          block-centers.push((current-block-x-center, block-y-center))

          let block-p1 = (current-block-x-start, block-top-y)
          let block-p2 = (current-block-x-start + block-width, block-bottom-y)

          if i == disk_blocks_data.len() - 1 {
            // 最后一个块
            draw-labelled-rect(
              block-p1,
              block-p2,
              color-block-eof,
              [块#block_num],
              text-weight: font-weight-bold,
              text-size: font-size-normal,
              rect-stroke: stroke-thick,
            )
            content(
              (current-block-x-center + 1, block-bottom-y - 0.25),
              text(size: font-size-small, fill: black, weight: font-weight-bold)[EOF], // 改为黑色
            )
          } else {
            // 数据块
            draw-labelled-rect(
              block-p1,
              block-p2,
              color-block-data,
              [块#block_num],
              text-weight: font-weight-bold,
              text-size: font-size-normal,
              rect-stroke: stroke-thick,
            )

            // 块间箭头 - 使用黑色实线
            line(
              (current-block-x-start + block-width, block-y-center),
              (current-block-x-start + block-width + block-h-gap, block-y-center),
              mark: (end: ">"),
              stroke: 2pt + black, // 直接定义粗黑线
            )
          }
        }

        // --- 6. 画箭头 ---
        // 从目录项到第一个块的箭头
        let first_block_position = 0 // 块3在链中的位置
        line(
          (dir-start-block-link-from-x, dir-start-block-link-from-y),
          block-link-points-top.at(first_block_position),
          mark: (end: ">"),
          stroke: 2pt + black, // 直接定义粗黑线
        )

        // 添加箭头标签
        content(
          (
            dir-start-block-link-from-x - 0.5,
            (dir-start-block-link-from-y + block-link-points-top.at(first_block_position).at(1)) / 2,
          ),
          text(size: font-size-small, fill: black, weight: font-weight-bold)[指向], // 改为黑色
        )

        // FAT表项之间的关系箭头
        let fat_to_block_links = (
          (fat_idx: 3, block_val: 3),
          (fat_idx: 6, block_val: 6),
          (fat_idx: 8, block_val: 8),
          (fat_idx: 10, block_val: 10),
        )

        for link in fat_to_block_links {
          let block_chain_idx = none
          for (i, val) in disk_blocks_data.enumerate() {
            if val == link.block_val {
              block_chain_idx = i
              break
            }
          }

          if block_chain_idx != none {
            line(
              fat-entry-link-points.at(link.fat_idx),
              (block-link-points-bottom.at(block_chain_idx)) + (1,),
              mark: (end: ">"),
              stroke: 1pt + black, // 直接定义黑线
              dash: "dashed",
            )
          }
        }

        // --- 7. 图例 ---
        // 绘制图例背景
        rect(
          (fat-table-x-start + 2, legend-y + 0.8),
          (13, legend-y + 1.6), // 向下移动图例
          stroke: stroke-thin,
          fill: color-legend-bg,
        )

        content(
          (7.25, legend-y + 1.35),
          text(weight: font-weight-bold, size: font-size-normal, fill: black)[图例说明], // 改为黑色
        )

        let legend-items = (
          ([实线: 目录指向], 3.5), // 移除颜色描述
          ([虚线: FAT链接], 6.5), // 移除颜色描述
          ([浅灰框: 数据块], 9.5), // 改为灰度描述
          ([深灰框: 结束块], 12), // 改为灰度描述
        )

        for (item, x_pos) in legend-items {
          content((x_pos, legend-y + 0.95), text(size: font-size-small, fill: black)[#item]) // 改为黑色
        }
      })
    ]
    *解析：*
    1. 目录条目中记录文件A的起始块号为3
    2. FAT表中索引3的条目存储下一块号6
    3. FAT表中索引6的条目存储下一块号8
    4. FAT表中索引8的条目存储下一块号10
    5. FAT表中索引10的条目存储下一块号5
    6. FAT表中索引5的条目存储文件结束标志(EOF)
    7. 因此文件A的块链接顺序为：3 → 6 → 8 → 10 → 5 (结束)
  ],
  score: "5分",
)

== 程序设计题 (共1题, 每题10分, 共10分)
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
#let code_answer_block(num, code, explanation: "", score: "", isbreakable: true) = {
  block(
    width: 100%,
    fill: rgb("#F8F9FA"),
    stroke: (left: 3pt + rgb("#6F42C1")),
    inset: (left: 8pt, rest: 6pt),
    radius: (right: 3pt),
    breakable: isbreakable,
  )[
    #text(weight: "bold", fill: rgb("#6F42C1"))[第#num 题参考代码] #if score != "" [#text(fill: gray)[(#score)]]

    #v(4pt)
    #coder(code)

    #if explanation != "" [
      #v(4pt)
      #text()[#explanation]
    ]
  ]
  v(6pt)
}
#code_answer_block(
  "1",
  [
    #figure(caption: [题目信息])[
      #set text(size: 6.5pt)
      #canvas({
        import draw: *
        scale(0.55)
        // 绘制进程P
        rect((0, 4), (2, 6), stroke: black, fill: none)
        content((1, 5), [进程P])
        content((1, 4.5), [读入信息])

        // 绘制进程Q
        rect((5, 4), (7, 6), stroke: black, fill: none)
        content((6, 5.2), [进程Q])
        content((6, 4.5), [加工信息])

        // 绘制进程R
        rect((10, 4), (12, 6), stroke: black, fill: none)
        content((11, 5), [进程R])
        content((11, 4.5), [打印输出])

        // 绘制缓冲池1 (P和Q共享)
        rect((2.5, 1.5), (4.5, 3.5), stroke: black, fill: none)
        content((3.5, 2.5), [缓冲池1])
        content((3.5, 2), [m个缓冲区])

        // 绘制缓冲池2 (Q和R共享)
        rect((7.5, 1.5), (9.5, 3.5), stroke: black, fill: none)
        content((8.5, 2.5), [缓冲池2])
        content((8.5, 2), [n个缓冲区])

        // 绘制输入设备
        rect((-2, 4.5), (0, 5.5), stroke: black, fill: none)
        content((-1, 5), [输入设备])

        // 绘制输出设备
        rect((12, 4.5), (14, 5.5), stroke: black, fill: none)
        content((13, 5), [输出设备])

        // 绘制箭头和连接线
        // 输入设备到P
        line((-2, 5), (0, 5), stroke: black, mark: (end: ">"))

        // P到缓冲池1
        line((1, 4), (3.5, 3.5), stroke: black, mark: (end: ">"))

        // 缓冲池1到Q
        line((3.5, 3.5), (6, 4), stroke: black, mark: (end: ">"))

        // Q到缓冲池2
        line((6, 4), (8.5, 3.5), stroke: black, mark: (end: ">"))

        // 缓冲池2到R
        line((8.5, 3.5), (11, 4), stroke: black, mark: (end: ">"))

        // R到输出设备
        line((12, 5), (14, 5), stroke: black, mark: (end: ">"))

        // 添加标签说明
        content((3.5, 0.5), [P和Q共享])
        content((8.5, 0.5), [Q和R共享])

        // 添加PV操作说明
        content((1, 7), [P操作:])
        content((1, 6.5), [写入缓冲池1])

        content((6, 7), [Q操作:])
        content((6, 6.6), [从缓冲池1读取])
        content((6, 6.2), [写入缓冲池2])

        content((11, 7), [R操作:])
        content((11, 6.5), [从缓冲池2读取])
      })]

    ```c
    // 定义信号量和缓冲区 (伪代码风格)
    semaphore mutex1 = 1;      // 缓冲池1互斥锁
    semaphore empty1 = m;      // 缓冲池1空缓冲区数
    semaphore full1 = 0;       // 缓冲池1满缓冲区数
    buffer pool1[m];           // P和Q共享的缓冲池1

    semaphore mutex2 = 1;      // 缓冲池2互斥锁
    semaphore empty2 = n;      // 缓冲池2空缓冲区数
    semaphore full2 = 0;       // 缓冲池2满缓冲区数
    buffer pool2[n];           // Q和R共享的缓冲池2

    // 假设 item_type 为传输的信息单元类型
    item_type data_item;

    // 进程P: 从输入设备读信息，放入pool1
    process P {
        while (true) {
            read_from_input_device(&data_item); // 从输入设备读取信息

            P(empty1);    // 等待pool1有空闲缓冲区
            P(mutex1);    // 进入临界区
            add_item_to_buffer(pool1, data_item); // 信息放入pool1
            V(mutex1);    // 退出临界区
            V(full1);     // 通知pool1有数据了
        }
    }

    // 进程Q: 从pool1取信息，加工后放入pool2
    process Q {
        item_type item_from_p, item_for_r;
        while (true) {
            P(full1);     // 等待pool1有数据
            P(mutex1);    // 进入临界区
            remove_item_from_buffer(pool1, &item_from_p); // 从pool1取出信息
            V(mutex1);    // 退出临界区
            V(empty1);    // 通知pool1有空位了

            process_data(item_from_p, &item_for_r); // 加工信息

            P(empty2);    // 等待pool2有空闲缓冲区
            P(mutex2);    // 进入临界区
            add_item_to_buffer(pool2, item_for_r); // 加工后信息放入pool2
            V(mutex2);    // 退出临界区
            V(full2);     // 通知pool2有数据了
        }
    }

    // 进程R: 从pool2取信息并打印输出
    process R {
        item_type item_to_print;
        while (true) {
            P(full2);     // 等待pool2有数据
            P(mutex2);    // 进入临界区
            remove_item_from_buffer(pool2, &item_to_print); // 从pool2取出信息
            V(mutex2);    // 退出临界区
            V(empty2);    // 通知pool2有空位了

            print_output(item_to_print); // 打印输出信息
        }
    }
    ```],
  explanation: [ ],
  score: "共10分",
)
