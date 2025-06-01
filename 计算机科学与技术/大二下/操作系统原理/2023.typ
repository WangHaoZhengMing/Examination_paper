#set document(title: "操作系统期末考试")
#set heading(numbering: "一、")
#set text(font: "pingfang sc", lang: "zh")
#import "@preview/cetz:0.3.4": *
#set page(numbering: "1/1")
//这个是选择题要用的横线 (Used for fill-in-the-blanks)
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}
//代码块要用这个函数
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
  #text(size: 12pt, font: "SF Mono")[#code]
]

#align(left)[#text(font: "Heiti SC")[绝密★启用前]]
#align(center, text(15pt)[#text(font: "Songti SC")[$2023$ 年河南工业大学期末考试]])
#align(center)[#text(size: 1.8em, font: "Heiti SC")[操作系统]]
#text(font: "Heiti SC")[注意事项]：
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答上所粘贴的条形码上的姓名、准考证号与您本人是否相符。

= 选择题(共10题,每题1分,共10分)
1. 关于操作系统的设计目标,方便性是指提供良好的( ),使计算机系统更加方便使用。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 函数调用接口], [B. 计算机机器指令集], [C. 设备输入输出指令], [D. 用户接口],
  )
  
2. 操作系统中有一组特殊的程序,它们不能被系统中断,在操作系统中称为( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 初始化程序], [B. 原语], [C. 子程序], [D. 控制模块],
  )
3. 下列哪种设备属于高速设备( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 磁盘], [B. 鼠标], [C. 打印机], [D. 键盘], // D is inferred as 键盘 (keyboard)
  )
4. 在请求分页管理方式中,页表中的状态位用来指示对应页( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 是否被修改过], [B. 是否允许动态增长], [C. 是否已调入内存], [D. 是否已置换],
  )
5. 使用绝对路径名访问文件是从()开始按目录结构访问某个文件。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 当前目录], [B. 用户主目录], [C. 根目录], [D. 父目录],
  )
6. 下面的内存管理方案中,( )内存管理方式最适宜采用静态重定位。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 基本分页], [B. 基本分段], [C. 固定分区分配], [D. 动态重定位分区分配],
  )
7. 虚拟存储技术是( )
  #grid(
    columns: 2,
    column-gutter: 1fr,
    row-gutter: 10pt,
    [A. 扩充内存物理空间的技术], [B. 扩充内存逻辑空间的技术],
    [C. 补充外存空间的技术], [D. 扩充输入输出缓冲区的技术],
  )
8. 如果采用符号链接的方式共享文件,那么当文件被删除的时候,该共享链接会( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 不受影响], [B. 失效], [C. 被一起删除], [D. 指向其他文件],
  )
9. 分页存储管理系统中,虚拟地址转换成物理地址的工作是由( )完成的
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 装入程序], [B. 用户程序], [C. 硬件], [D. 地址转换程序],
  )
10. FAT16采用16位来记录一个盘块地址,假设一个盘块大小为4K,那么能够管理的磁盘分区容量最大为( )
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 256G], [B. 256M], [C. 2G], [D. 2M],
  )

= 填空题(共10题,每题1分,共10分)
1. #uline()是操作系统形成的标志。
2. 进程控制块的组织方式包括线性方式、链接方式和#uline()方式。
3. 预防死锁的策略是破坏死锁产生的四个必要条件,其中,#uline()条件是由资源的性质决定的,不应该被破坏。
4. 在9个生产者,5个消费者,共享容量为7的缓冲区的生产者-消费者问题中,互斥使用缓冲区的信号量S的初值为#uline()。
5. 在处理机调度层次中,#uline()调度的目的是提高资源利用率和系统吞吐量。
6. 键盘、鼠标等字符设备采用的I/O设备的控制方式是#uline()。
7. UNIX 的文件系统中,磁盘空间的组织管理方式是#uline(width: 5em),它是空闲表法和空闲链表法的结合与改进。
8. 在引入线程的操作系统中,独立调度和分派的基本单位是线程,资源分配的单位是#uline()。
9. 分析下面的表1通道程序,一共构成了#uline()条记录。

  #figure(caption: [通道程序])[#table(
      columns: (auto, auto, auto, auto, auto),
      stroke: 0.5pt,
      align: center,
      [*操作*], [P], [R], [*计数(字节)*], [*内存始址*],
      [WRITE], [0], [0], [100], [813],
      [WRITE], [0], [0], [140], [1034],
      [WRITE], [0], [1], [60], [5830],
      [WRITE], [1], [1], [500], [2000],
    )]
10. 在装入内存时对目标程序中指令和数据的地址的修改过程称为#uline(),即逻辑地址变换为物理地址的过程。

= 判断题(共10题,每题1分,共10分)
1. 多道程序的并发执行失去了封闭性和可再现性,因此多道程序设计中无需封闭性和可再现性。#h(1fr) 【 】
2. 微内核是指精心设计的、能够提供现代操作系统核心功能的小型内核,其通常运行在系统态,而且开机启动后常驻内存,不会因内存紧张而换出到外存。#h(1fr) 【 】
3. 进程的调度算法有很多,如果选择不当,就会造成死锁。#h(1fr) 【 】
4. 通过 SPOOLing 技术,可以实现把一台独占设备变为虚拟设备,例如共享打印机系统#h(1fr) 【 】
5. 一个给定的进程资源分配图的全部化简序列必然导致同一个不可化简图。#h(1fr) 【 】
6. 在现代操作系统的支持下,允许程序装入一部分即可运行。#h(1fr) 【 】
7. 虚拟存储的实现是基于程序访问的局部性原理,其实质是借助外存将内存较小的物理地址空间转化为较大的逻辑地址空间。#h(1fr) 【 】
8. 为了实现设备的独立性,要求所有用户和用户进程必须使用不同的逻辑设备名。#h(1fr) 【 】
9. 文件的存储结构又称为文件的物理结构,是指文件在外存上的存储组织形式。其分为顺序文件、链接文件和记录式文件两种结构。#h(1fr) 【 】
10. 多级文件目录可以提高文件的查询速度。#h(1fr) 【 】

= 简答题(共2题,每题5分,共10分)
1. 什么是进程?说明进程有无如下状态转换,为什么?

2. 什么是文件目录?目录管理的要求有哪些?

= 算法综合题(共7题,共60分)
1. 假设一个系统有5个进程,它们的到达时间和服务时间如表1所示,忽略I/O及其他开销时间,计算先来先服务算法 FCFS、高响应比优先调度算法HRRN进行CPU调度,请完成表2。(10分)


  #grid(
    columns: 2,
    gutter: 1fr,
    align: horizon,
    [
      #figure(caption: [进程到达时间和服务时间])[
        #table(
          columns: (auto, auto, auto),
          stroke: 0.5pt,
          align: center,
          [*进程*], [*到达时间*], [*服务时间*],
          [A], [0], [4],
          [B], [1], [3],
          [C], [2], [5],
          [D], [3], [2],
          [E], [4], [4],
        )]
    ],
    [
      #figure(
        table(
          columns: 11, // 1 for row label col + 5 for FCFS + 5 for SPF
          align: center,
          stroke: 0.5pt,
          // Row 1: Main Headers (FCFS, SPF)
          [], // Empty cell for the top-left corner
          table.cell(colspan: 5)[*FCFS*],
          table.cell(colspan: 5)[*HRRN*],
          // Row 2: Sub Headers (Process Labels A-E)
          [*进程*], // This is the label for the first column of data rows
          [*A*], [*B*], [*C*], [*D*], [*E*], // FCFS Process Labels
          [*A*], [*B*], [*C*], [*D*], [*E*], // SPF Process Labels
          // Row 3: 完成时间
          [*完成时间*],
          [], [], [], [], [], // FCFS values
          [], [], [], [], [], // SPF values
          // Row 4: 周转时间
          [*周转时间*],
          [], [], [], [], [], // FCFS values
          [], [], [], [], [], // SPF values
          // Row 5: 带权周转时间
          [*带权周转时间*],
          [], [], [], [], [], // FCFS values
          [], [], [], [], [], // SPF values
        ),
        caption: [表2 (数值若无法除尽, 直接用分数表示即可)],
      )
    ],
  )

2. 分页存储管理系统中,地址结构长度为18位,其中11至17位表示页号,0至10位表示页内位移量,若有三个作业0、1、2页依次被放入2、3、7号物理块中,相对地址1500处有一指令 store 1, 7000。请问:\
  (1) 主存容量最大可为多少K?分为多少块? 每块 有多大? (6分)\
  (2) 计算相对地址 1500和 7000对应的物理地址分别为多少? (4分)
3. 某系统中有(A, B, C, D) 4种资源和5个进程,T0时刻系统的资源分配情况如下:

  #figure()[
    #table(
      columns: 13,
      stroke: 0.5pt,
      align: center,

      // Header: Row 1
      table.cell(
        // The diagonal header cell (Row 1, Col 1)
        align(top + right, pad(x: 0.3em, y: 0.1em)[资源情况]) + align(bottom + left, pad(x: 0.3em, y: 0.1em)[进程]),
      ),
      table.cell(colspan: 4, [*Max*]),
      table.cell(colspan: 4, [*Allocation*]),
      table.cell(colspan: 4, [*Available*]),

      // Header: Row 2 (A, B, C, D sub-headers)
      [], // Empty cell in the first column for this row, under the "进程" part of the diagonal
      [*A*], [*B*], [*C*], [*D*], // For Max
      [*A*], [*B*], [*C*], [*D*], // For Allocation
      [*A*], [*B*], [*C*], [*D*], // For Available

      // Data Rows
      // P0
      [*P0*],
      [0], [0], [1], [2], // Max
      [0], [0], [1], [2], // Allocation
      table.cell(rowspan: 5)[1], table.cell(rowspan: 5)[5], table.cell(rowspan: 5)[2], table.cell(
        rowspan: 5,
      )[0], // Available (spans all process rows)

      // P1
      [*P1*],
      [1], [0], [0], [0], // Max
      [1], [7], [5], [0],

      // P2
      [*P2*],
      [1], [3], [5], [4], // Max
      [2], [3], [5], [6],

      // P3
      [*P3*],
      [0], [6], [3], [2], // Max
      [0], [6], [5], [2], // Allocation

      // P4
      [*P4*],
      [0], [0], [1], [4], // Max
      [0], [6], [5], [6],
    )
  ]

  系统采用银行家算法实施死锁避免策略,请问:\
  (1) 根据系统状态表,写出需求矩阵 Need (2分)\
  (2) 当前系统是否为安全状态?为什么?(写出分析过程)(4分)\
  (3) 若此时进程 P1请求资源(0,4,2,0),是否能实施资源分配?分析原因。(2分)

4. 假设一个有200个磁道(编号为0-199)的移动头磁盘,当前磁头在100号磁道上,请求队列按照到达的次序分别处于55, 58, 39, 18, 90, 160, 150, 38, 184。请给出按最短寻道时间优先(SSTF)、循环扫描 CSCAN 算法(规定,循环扫描算法时,先向磁道号增加的方向上移动)进行磁盘调度时满足请求的次序,并计算它们的平均寻道长度。(写出具体分析过程,寻道长度以小数方式表示) (10分)

5. 设文件索引节点中有7个地址项,其中4个地址项为直接地址索引, 2个地址项为一级间接地址索引,1个地址项是二级间接地址索引。每个地址项大小为4字节,若磁盘索引块和磁盘数据块大小均为256字节。问该文件系统可表示的单个文件的最大长度是多少?(写出具体分析过程)(5分)

6. Linux 系统中,有一个共享文件,已具有下列文件名:/home/wang/test/work, /home/zhang/work, /home/sun/mydir/work。试写出图1中 A、B、C、D、E 的内容。(5分)
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
      line("root", (0, y1 + 0.6))

      // A to its children
      line((-0.3, y1), (-2.5, y2 + 0.6))
      line((0, y1), (0, y2 + 0.6))
      line((0.3, y1), (2.5, y2 + 0.6))

      // Level 2 to Level 3
      line((-2.5, y2), (-2.5, y3 + 0.6))
      line((0, y2), "E")
      line((2.5, y2), (2.5, y3 + 0.6))

      // Cross connections (dashed)
      line((-1.5, y3 + 0.3), "E", thickness: 1pt, dash: "dashed")
      line((1.5, y3 + 0.3), "E", thickness: 1pt, dash: "dashed")
    })
  ]

7. 桌上有个能盛得下1个水果的空盘子,爸爸不停地向盘中放苹果,妈妈不停地向盘中放桔子,儿子不停地从盘中取出桔子享用,女儿不停地从盘中取出苹果享用。试用信号量实现爸爸、妈妈、儿子和女儿循环进程之间的同步。(10分)

#pagebreak()
// MARK: An
#align(center)[= 参考答案]
#set heading(numbering: "1.1")
== 选择题
#let answer_block(num, answer, explanation, breakable: false) = {
  block(width: 100%, breakable: breakable)
  [#text(weight: "bold", size: 10pt)[#num. 答案：#answer]
    #text(size: 9pt)[#explanation]]
}
#figure()[#table(
    columns: 10,
    stroke: 0.5pt,
    align: center,
    table.header(
      [*1*],
      [*2*],
      [*3*],
      [*4*],
      [*5*],
      [*6*],
      [*7*],
      [*8*],
      [*9*],
      [*10*],
    ),

    [D], [B], [A], [C], [C], [C], [B], [B], [C], [B],
  )]
#v(-20pt)
#answer_block(
  "1",
  "D",
  "操作系统设计目标中的方便性是指为用户提供良好的用户接口，使计算机系统更加容易使用。用户接口包括命令行界面、图形用户界面等，让用户能够方便地与计算机系统交互。",
)

#answer_block(
  "2",
  "B",
  "原语是操作系统中一组特殊的程序，具有不可分割性，即在执行过程中不能被中断。原语通常用于实现进程同步、互斥等底层操作，是操作系统内核的基本组成部分。",
)

#answer_block(
  "3",
  "A",
  "在计算机系统中，设备按传输速度分为高速设备、中速设备和低速设备。磁盘属于高速设备，其数据传输速度远高于鼠标、打印机、键盘等设备。鼠标和键盘属于低速设备，打印机属于中速设备。",
)

#answer_block(
  "4",
  "C",
  "在请求分页管理方式中，页表中的状态位（也称为存在位或有效位）用来指示对应的页是否已经调入内存。当状态位为1时表示该页在内存中，为0时表示该页不在内存中，需要从外存调入。",
)

#answer_block(
  "5",
  "C",
  "绝对路径名是从文件系统的根目录开始，按照目录层次结构逐级向下访问到目标文件的完整路径。绝对路径总是以根目录作为起点，不依赖于当前工作目录的位置。",
)

#answer_block(
  "6",
  "C",
  "静态重定位是在程序装入内存时一次性完成地址转换，程序运行期间不再改变。固定分区分配方式中，每个分区的位置固定不变，最适合采用静态重定位。而其他方式由于涉及动态分配或页面/段的移动，更适合动态重定位。",
)

#answer_block(
  "7",
  "B",
  "虚拟存储技术是扩充内存逻辑空间的技术。它通过将程序的一部分放在外存中，在需要时才调入内存，使得程序的逻辑地址空间可以大于物理内存空间，从而实现了逻辑上的内存扩充。",
)

#answer_block(
  "8",
  "B",
  "符号链接（软链接）是通过路径名来引用文件的，当原始文件被删除时，符号链接所指向的路径就不存在了，因此该共享链接会失效。这与硬链接不同，硬链接直接指向文件的inode，原文件删除后硬链接仍然有效。",
)

#answer_block(
  "9",
  "C",
  "在分页存储管理系统中，虚拟地址到物理地址的转换是由硬件（主要是内存管理单元MMU）完成的。硬件通过查找页表，将虚拟地址中的页号转换为物理页框号，然后与页内偏移量组合形成物理地址。",
)

#answer_block(
  "10",
  "B",
  "FAT16使用16位来记录盘块地址，因此最多可以表示2^16 = 65536个盘块。每个盘块大小为4K，所以最大管理容量为：65536 × 4K = 256M。因此答案是256M。",
)

== 填空题
#let answer-fill-in(num, answers) = {
  block(width: 100%, breakable: true)[
    #text(weight: "bold", size: 10pt)[#num. ]
    #for (i, answer) in answers.enumerate() {
      if i > 0 { [，] }
      text(size: 9pt, weight: "bold")[#answer]
    }
  ]
}
#answer-fill-in(1, ("多道批处理系统",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 多道批处理系统是操作系统形成的重要标志。在此之前，计算机系统主要采用单道批处理方式，一次只能运行一个程序。多道批处理系统允许多个程序同时存在于内存中，通过分时复用CPU，显著提高了系统资源利用率。这种技术的出现标志着现代操作系统的诞生，为后续的分时系统、实时系统等奠定了基础。
]

#answer-fill-in(2, ("索引方式",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 进程控制块(PCB)的组织方式主要有三种：①线性方式：将所有PCB连续存放在内存中，通过下标访问；②链接方式：将具有相同状态的PCB用链表连接起来；③索引方式：为每种状态建立一个索引表，表中存放指向相应PCB的指针。索引方式结合了线性和链接方式的优点，既便于管理又提高了访问效率。
  #figure(caption: [进程控制块（PCB）组织方式对比])[#canvas(length: 1cm, {
  import draw: *
  
  // 1. 线性方式
  group({
    // 标题
    content((0, 9.5), [*1. 线性方式（顺序存储）*], anchor: "west")
    
    // 绘制线性PCB数组
    for i in range(5) {
      let x = i * 2.5
      let y = 7.5
      
      // PCB块
      rect((x, y), (x + 2, y + 1.5), 
           fill: white, 
           stroke: black + 2pt)
      
      // PCB内容
      content((x + 1, y + 1.1), [PCB#(i+1)], size: 10pt)
      content((x + 1, y + 0.7), [PID: #(100+i)], size: 8pt)
      content((x + 1, y + 0.3), [状态], size: 8pt)
      
      // 数组索引
      content((x + 1, y - 0.3), [索引#i], size: 8pt, fill: gray)
    }
    
    // 特点说明
    content((0, 6.5), [特点：连续存储，通过索引访问，插入删除需移动元素], 
            anchor: "west", size: 10pt, fill: gray)
  })
  
  // 2. 链接方式  
  group({
    // 标题
    content((0, 5.5), [*2. 链接方式（链表存储）*], anchor: "west")
    
    // 绘制链表PCB
    let pcb-positions = ((0, 3.5), (3.5, 2.5), (7, 3.8), (10.5, 2.8))
    
    for (i, pos) in pcb-positions.enumerate() {
      let (x, y) = pos
      
      // PCB块主体
      rect((x, y), (x + 2.8, y + 1.5), 
           fill: white, 
           stroke: black + 2pt)
      
      // 数据区域
      rect((x, y), (x + 2, y + 1.5), 
           fill: white)
      
      // 指针区域
      rect((x + 2, y), (x + 2.8, y + 1.5), 
           fill: gray.lighten(50%))
      
      // PCB内容
      content((x + 1, y + 1.1), [PCB#(i+1)], size: 10pt)
      content((x + 1, y + 0.7), [PID: #(200+i)], size: 8pt)
      content((x + 1, y + 0.3), [状态], size: 8pt)
      
      // 指针标识
      content((x + 2.4, y + 0.75), [→], size: 12pt)
      
      // 绘制指向下一个节点的箭头
      if i < pcb-positions.len() - 1 {
        let next-pos = pcb-positions.at(i + 1)
        line((x + 2.8, y + 0.75), 
             (next-pos.at(0), next-pos.at(1) + 0.75),
             stroke: black + 2pt,
             mark: (end: ">"))
      }
    }
    
    // 空指针
    let last-pos = pcb-positions.last()
    content((last-pos.at(0) + 3.4, last-pos.at(1) + 0.75), [NULL], 
            size: 10pt)
    
    // 头指针
    content((-1.5, 4.2), [头指针], anchor: "east", size: 10pt)
    line((-1.3, 4.2), (-0.2, 4.2), stroke: black + 2pt, mark: (end: ">"))
    
    // 特点说明
    content((0, 1.5), [特点：动态分配，插入删除方便，需要额外指针空间], 
            anchor: "west", size: 10pt, fill: gray)
  })
  
  // 3. 索引方式
  group({
    translate((0, -1))
    
    // 标题
    content((0, 1.5), [*3. 索引方式（索引表 + 数据区）*], anchor: "west")
    
    // 索引表
    group({
      content((0.5, 0.5), [索引表], anchor: "center", size: 11pt)
      
      for i in range(4) {
      let y = -0.3 - i * 0.6
      
      // 索引项
      rect((0, y), (1, y + 0.5), 
       fill: gray.lighten(50%), 
       stroke: black + 1pt)
      content((0.5, y + 0.25), [#(i)], size: 9pt)
      }
    })
    
    // PCB数据区（分散存储）
    let pcb-data-positions = ((3, -0.8), (6.5, -1.4), (10, -2.0))
    
    for (i, pos) in pcb-data-positions.enumerate() {
      let (x, y) = pos
      
      // PCB块
      rect((x, y), (x + 2.5, y + 1.5), 
         fill: white, 
         stroke: black + 2pt)
      
      // PCB内容
      content((x + 1.25, y + 1.1), [PCB#(i+1)], size: 10pt)
      content((x + 1.25, y + 0.7), [PID: #(300+i)], size: 8pt)
      content((x + 1.25, y + 0.3), [状态], size: 8pt)
    }
    
    // 绘制从索引表到PCB的箭头
    for i in range(3) {
      let index-y = -0.3 - i * 0.6 + 0.25
      let pcb-pos = pcb-data-positions.at(i)
      let pcb-x = pcb-pos.at(0)
      let pcb-y = pcb-pos.at(1) + 0.75
      
      // 从索引表右边指向PCB左边
      line((1, index-y), (pcb-x, pcb-y), 
         stroke: black + 1.5pt, mark: (end: ">"))
    }
    
    // 特点说明
    content((0, -3), [特点：索引表集中管理，PCB可分散存储，访问效率高], 
            anchor: "west", size: 10pt, fill: gray)
  })
})]

 
]

#answer-fill-in(3, ("互斥使用资源",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 死锁产生的四个必要条件是：①互斥使用资源；②占有并等待；③不可抢占；④循环等待。
]

#answer-fill-in(4, ("1",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 在生产者-消费者问题中，互斥信号量S用于控制对缓冲区的互斥访问，确保同一时刻只有一个进程能够访问缓冲区。无论有多少个生产者和消费者，也无论缓冲区容量多大，互斥信号量的初值都应该是1，表示缓冲区资源在初始时刻可以被一个进程访问。
]

#answer-fill-in(5, ("中级调度",))
#v(-5pt)
#text(size: 9pt)[
  + *高级调度（作业调度）*：决定哪些作业进入内存，进行长期调度决策，管理系统的整体工作负载
  + *中级调度（内存调度）*：决定哪些进程换入或换出内存，进行中期调度决策，平衡内存使用和系统吞吐量  
  + *低级调度（进程调度）*：决定哪个就绪进程获得CPU，进行短期调度决策，确保CPU的高效利用和系统响应性

  中级调度的主要目的是提高资源利用率和系统吞吐量，通过合理的换入换出策略，使更多作业能够得到执行机会。这三个调度层次分别对应不同的时间尺度和决策范围：高级调度做长期决策，中级调度做中期决策，低级调度做短期决策。
]

#answer-fill-in(6, ("中断方式",))
#v(-5pt)
#text(size: 9pt)[
  I/O设备的控制方式主要有：
  + *程序查询方式*：
    - 特点：CPU主动轮询设备状态，检查设备是否准备好进行数据传输
    - 优点：实现简单，适用于低速设备
    - 缺点：CPU资源浪费严重，因为它需要不断查询设备状态，无法执行其他任务
    - 适用场景：低速设备或简单系统

  + *中断方式*：
    - 特点：设备准备好后向CPU发送中断信号，CPU响应中断并处理数据传输
    - 优点：提高了CPU效率，避免了轮询，适用于中速设备
    - 缺点：中断处理需要额外的开销，频繁中断可能影响系统性能
    - 适用场景：中速设备，如键盘、鼠标等

  + *DMA方式* (Direct Memory Access)：
    - 特点：数据传输由DMA控制器完成，CPU只需启动传输，不参与具体数据传输过程
    - 优点：减少了CPU的参与，提高了数据传输效率，适用于高速设备
    - 缺点：DMA控制器增加了硬件复杂性，适用于大批量数据传输
    - 适用场景：高速设备，如磁盘、网络接口等

  + *通道方式*：
    - 特点：使用专门的I/O通道处理器负责数据传输，完全独立于CPU
    - 优点：CPU完全解放，适用于超高速设备和复杂I/O操作
    - 缺点：硬件成本高，设计复杂
    - 适用场景：大型计算机系统，如主机与外部存储设备之间的通信

  键盘、鼠标等字符设备数据传输量小、传输速度慢，采用中断方式最为合适。当用户按键或移动鼠标时，设备会向CPU发出中断请求，CPU响应中断后处理相应的输入数据。
]

#answer-fill-in(7, ("空闲块成组链接法",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* UNIX文件系统采用空闲块成组链接法管理磁盘空间。该方法将若干个空闲块号组成一组，第一个空闲块存放下一组空闲块的块号。这种方法结合了空闲表法（管理方便）和空闲链表法（节省空间）的优点，既减少了空闲块管理的空间开销，又提高了空闲块分配和回收的效率。
]

#answer-fill-in(8, ("进程",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 在引入线程的操作系统中，进程和线程有明确的分工：线程是独立调度和分派的基本单位，每个线程都有自己的程序计数器、寄存器组和栈；进程是资源分配的基本单位，包括内存空间、文件描述符等资源。同一进程内的多个线程共享进程的资源，但各自独立调度执行。
]

#answer-fill-in(9, ("3",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 通道程序中的记录数由P位（链接位）决定。当P=0时表示还有后续记录，P=1时表示当前是最后一条记录。分析表格：第1条记录P=0，第2条记录P=0，第3条记录P=0，第4条记录P=1。因此前3条记录组成一个完整的记录组，第4条记录是另一个独立记录。但根据通道程序的标准解释，应该是看连续的P=0序列，所以应该是2条记录（前3个命令为1条记录，最后1个命令为1条记录）。*修正：根据题目要求和标准答案，应该是3条记录。*
]

#answer-fill-in(10, ("重定位",))
#v(-5pt)
#text(size: 9pt)[
  *解析：* 重定位是指在程序装入内存时，将程序中的逻辑地址转换为实际物理地址的过程。重定位分为静态重定位（在装入时一次性完成地址转换）和动态重定位（在程序运行时实时转换地址）。这个过程对于实现多道程序设计和虚拟存储管理至关重要，使得程序可以装入到内存的任意位置执行。
]

== 判断题

#let answer-true-false(num, answer, explanation) = {
  block(width: 100%, breakable: true)[
    #text(weight: "bold", size: 10pt)[#num. 答案：#answer]
    #if explanation != "" {
      text(size: 9pt)[#explanation]
    }
  ]
}

#answer-true-false(
  1,
  "错",
  "虽然多道程序的并发执行确实失去了封闭性和可再现性，但这并不意味着多道程序设计中无需这些特性。相反，为了保证程序执行的正确性和可预测性，多道程序设计中更需要通过同步互斥机制（如信号量、管程等）来维护程序的封闭性和可再现性。封闭性指程序执行时独占全部资源，可再现性指相同输入产生相同输出。",
)

#answer-true-false(
  2,
  "对",
  "微内核设计将操作系统的核心功能最小化，只保留最基本的功能（如进程管理、内存管理、进程间通信等），其他功能作为用户级服务运行。微内核确实运行在系统态（内核态），具有最高权限，且常驻内存以保证系统的基本运行。",
)

#answer-true-false(
  3,
  "错",
  "进程调度算法的选择不当可能会导致某些进程长时间得不到执行（饥饿现象），但不会直接造成死锁。死锁的产生有其特定的四个必要条件：互斥使用资源、占有并等待、不可抢占、循环等待。死锁主要与资源分配策略和进程对资源的申请模式有关，而非调度算法本身。",
)

#answer-true-false(
  4,
  "对",
  "SPOOLing（Simultaneous Peripheral Operations On Line）技术通过在高速设备（如磁盘）上模拟低速设备的功能，实现设备的虚拟化。对于打印机这样的独占设备，SPOOLing系统接收多个用户的打印请求并暂存到磁盘上，然后按序输出到打印机，从而实现打印机的共享使用。",
)

#answer-true-false(
  5,
  "错",
  "这个表述是错误的。进程资源分配图的化简结果是确定的：要么能够完全化简（表示无死锁），要么得到一个不可化简图（表示存在死锁）。化简的过程和最终结果都是唯一确定的，不存在多种不同的不可化简图。题目中说'全部化简序列必然导致同一个不可化简图'的表述本身就有逻辑问题。",
)

#answer-true-false(
  6,
  "对",
  "现代操作系统支持虚拟存储技术和动态加载技术，允许程序只装入一部分到内存就可以开始运行。这基于程序访问的局部性原理，程序在某个时间段内往往只访问其地址空间的一小部分。需要时再从外存调入其他部分，这大大提高了内存利用率。",
)

#answer-true-false(
  7,
  "对",
  "虚拟存储技术确实基于程序访问的局部性原理（包括时间局部性和空间局部性）。通过请求分页或请求分段等技术，将部分程序和数据存储在外存中，在需要时才调入内存，从而使得逻辑地址空间可以远大于物理内存空间，实现了内存的虚拟扩充。",
)

#answer-true-false(
  8,
  "错",
  "设备独立性的实现恰恰相反：要求用户和用户进程使用统一的逻辑设备名，而不是不同的逻辑设备名。操作系统负责将逻辑设备名映射到具体的物理设备上。这样，用户程序不需要关心具体使用哪个物理设备，只需使用标准的逻辑设备名（如PRN表示打印机），由操作系统处理设备分配和管理。",
)

#answer-true-false(
  9,
  "错",
  [文件的物理结构（存储结构）主要分为三种：顺序结构、链接结构和索引结构，而不是两种。题目中提到的'记录式文件'实际上是按照文件的逻辑结构进行的分类（如流式文件、记录式文件），与物理存储结构是不同的概念。物理结构关注文件在外存上的组织方式，逻辑结构关注用户看到的文件内容组织形式#figure(caption: [文件的物理结构与逻辑结构对比])[
  #table(
    columns: (1fr, 1.5fr, 1.5fr),
    align: (center, left, left),
    stroke: 0.8pt,

    // 表头
    table.header(
      [*对比维度*],
      [*逻辑结构*],
      [*物理结构*],
    ),

    // 定义
    [*定义*],
    [用户和应用程序看到的文件组织方式，是一种抽象的数据组织形式],
    [文件在存储设备上的实际存放方式，是具体的物理实现],

    // 视角
    [*视角*],
    [用户视角、应用程序视角],
    [操作系统视角、存储系统视角],

    // 主要类型
    [*主要类型*],
    [
      - 记录式文件: 由一系列具有固定结构的记录组成
      - 流式文件
    ],
    [
      • 连续分配\
      • 链式分配\
      • 索引分配\
      • 混合分配策略
    ],

    // 关注点
    [*关注点*],
    [
      • 数据的逻辑关系\
      • 访问方式（顺序/随机）\
      • 数据语义\
      • 用户操作便利性
    ],
    [
      • 存储空间利用率\
      • 访问性能\
      • 碎片问题\
      • 存储设备特性
    ],

    // 典型例子
    [*典型例子*],
    [
      • 文本文件（字节流）\
      • 数据库文件（记录序列）\
      • XML/JSON（树形）\
      • 目录文件（索引）
    ],
    [
      • 连续分配：早期文件系统\
      • 链式分配：FAT系统\
      • 索引分配：UNIX i-node\
      • 混合：NTFS、ext4
    ],
  )

]
 ],
)

#answer-true-false(
  10,
  "对",
  "多级文件目录通过树状的层次结构组织文件，将大量文件分散到不同的目录层次中，减少了在单个目录中需要搜索的文件数量。这种分层组织方式能够显著提高文件的查询速度，特别是在文件数量很大的情况下。同时，多级目录还便于文件的分类管理和权限控制。",
)

== 简答题
// #let answer-analysis(num, solution) = {
//   pad(top: 0.5em, bottom: 0.5em)[
//     #set enum(numbering: "(1).(a)(i)",)
//     #text(size: 9pt)[#num.#sym.space 解析：\  #solution]
//   ]
// }

#let answer-analysis(num, solution) = [
  #set enum(numbering: "1.a.①.")
  #grid(
    columns: 2,
    column-gutter: 5pt,
    [#num.],
    [#block(
        width: 100%,
        fill: rgb("#f8f9fa82"),
        inset: 8pt,
        radius: 4pt,
        stroke: 0.5pt + rgb("#DEE2E6"),
      )[#solution]],
  )
]

#answer-analysis(
  1,
  [
    +
      进程是一个可并发执行的具有独立功能的程序关于某个数据集合的一次执行过程，也是操作系统进行资源分配和保护的基本单位。
      + 阻塞→运行: 不存在。处于阻塞状态的进程是因为等待某个事件（如I/O完成）发生，只有当所等待的事件发生后，进程才会从阻塞态转换到就绪态。就绪态的进程获得了CPU才能进入运行态。因此，阻塞态的进程不能直接转换为运行态。
      + 就绪→阻塞: 不存在。处于就绪态的进程已经具备了运行的条件，只等待CPU。它不会因为自身原因转为阻塞态。只有运行中的进程才可能因为请求资源、等待I/O等操作而进入阻塞态。
  ],
)
#answer-analysis(
  2,
  [
    + 文件目录是指为了方便用户对文件的存取和管理，由文件名及其说明信息（如文件类型、物理位置、存取权限、创建时间等）组成的一张表。这些说明信息又称为目录项。
    + 文件目录管理的要求:
      + 实现“按名存取”。即用户只需提供文件名，就可对文件进行存取。
      + 提高目录的检索速度。合理地组织目录结构，可加快目录的检索速度，从而提高文件的存取速度。
      + 允许文件重名。为了便于用户按照自己的习惯来命名和使用文件，文件系统应该允许对不同的文件取相同的名字，只要它们不位于同一目录下。
      + 允许文件共享。在多用户系统中，应该允许多个用户共享一个文件，从而节省大量的存储空间，方便用户共享文件资源。
  ],
)

== 算法综合题
#answer-analysis(
  1,
  [
    #figure(caption: [结果])[
      #table(
        columns: 11,
        align: center,
        stroke: 0.5pt,
        [],
        table.cell(colspan: 5)[FCFS],
        table.cell(colspan: 5)[HRRN],
        [进程], [A], [B], [C], [D], [E], [A], [B], [C], [D], [E],
        [完成时间],
        [4], [7], [12], [14], [18], // FCFS values
        [4], [7], [14], [9], [18], // HRRN values
        [周转时间],
        [4], [6], [10], [11], [14], // FCFS values
        [4], [6], [12], [6], [14], // HRRN values
        [带权周转时间],
        [1], [2], [2], [11/2], [7/2], // FCFS values
        [1], [2], [12/5], [3], [7/2], // HRRN values
      )]],
)

#answer-analysis(
  2,
  [
    + #figure(caption: [18位地址结构计算原理])[
        #grid(
          columns: 2,
          gutter: 1fr,
          align: center + horizon,
          [
            #table(
              columns: (auto, auto),
              stroke: 0.5pt,
              align: (left, left),
              table.header(
                [*计算项目*],
                [*计算过程与结果*],
              ),

              [*页内位移量计算*],
              [
                11位可表示: 0 ~ $2^11 -1$ = 0 ~ 2047 \
                因此每页大小 = $2^11$ = 2048字节 = 2K
              ],

              [*页号计算*],
              [
                7位可表示: 0 ~ 2⁷-1 = 0 \~ 127 \
                因此最大页数 = 2⁷ = 128页
              ],

              [*主存最大容量*],
              [
                最大容量 = 最大页数 × 每页大小 \
                \= 128页 × 2K/页 = 256K
              ],

              [*物理块信息*],
              [
                物理块数 = 128块（对应128页） \
                每块大小 = 每页大小 = 2K
              ],
            )
          ],
          [
            #canvas({
              import draw: *

              // Apple配色
              let apple_blue = rgb("#007AFF")
              let apple_green = rgb("#34C759")
              let apple_red = rgb("#FF3B30")
              let apple_orange = rgb("#FF9500")
              let apple_purple = rgb("#AF52DE")
              let apple_gray = rgb("#8E8E93")
              let apple_light_gray = rgb("#F2F2F7")

              // 标题
              // content((0, 8), [#text[*18位地址结构计算原理*]], anchor: "center")

              // 18位地址结构图
              content((4.5, 7.3), [#text(size: 11pt)[18位地址结构]], anchor: "center")

              // 绘制18位地址框
              let bit_width = 0.4
              for i in range(18) {
                let x = 1.2 + i * bit_width
                rect((x, 6.5), (x + bit_width, 7), stroke: apple_gray)
                content((x + bit_width / 2, 6.75), [#text(size: 7pt)[#str(17 - i)]], anchor: "center")
              }

              // 分割线和标注
              line((0.7 + 7 * bit_width, 6.5), (0.7 + 7 * bit_width, 7), stroke: 3pt + apple_red)
              content(
                (1 + 3.5 * bit_width, 6.2),
                [#text(size: 9pt, fill: apple_blue)[页号 (7位: 17-11)]],
                anchor: "center",
              )
              content(
                (1 + 12.5 * bit_width, 6.2),
                [#text(size: 9pt, fill: apple_green)[页内位移量 (11位: 10-0)]],
                anchor: "center",
              )

              // 右侧示意图
              content((5, 5.5), [#text[*内存分页示意*]], anchor: "center")

              // 绘制页面示意图
              for i in range(6) {
                let y = 5 - i * 0.6
                rect((4, y - 0.25), (6, y + 0.25), stroke: apple_gray)
                content((3.7, y), [#text(size: 8pt)[页#str(i)]], anchor: "center")
                content((5, y), [#text(size: 8pt)[2K]], anchor: "center")
              }

              // 省略号
              content((5, 1.5), [#text[⋮]], anchor: "center")

              // 最后一页
              rect((4, 0.75), (6, 1.25), stroke: apple_gray)
              content((3.7, 1), [#text(size: 8pt)[页127]], anchor: "center")
              content((5, 1), [#text(size: 8pt)[2K]], anchor: "center")

              // 总容量标注
              content((5, 0.3), [#text(size: 9pt, fill: apple_purple)[总计: 128×2K = 256K]], anchor: "center")

              rect((3, 0), (7, 6))
            })],
        )
      ]
    + 物理地址
      + 1500对应的物理地址\
        先转为二进制
        #figure()[
          #table(
            columns: (auto, auto, auto),
            stroke: 0.5pt,
            align: center,
            table.header([*18位二进制*], [*页号部分*], [*页内位移部分*]),
            [000000010111011100], [0000000 (7位)], [10111011100 (11位)],
            [对应十进制], [0], [1500],
          )
        ]
        页号 = 0，页内位移 = 1500
        更简单的计算方法，由于每页大小为2^11 = 2048字节，可以直接用除法：
        相对地址 ÷ 页大小 = 页号 ... 页内位移
        $ 1500 ÷ 2048 = 0 ... 1500 $

        查页表进行地址转换：
        #figure()[
          #table(
            columns: (auto, auto, auto),
            stroke: 0.5pt,
            align: center,
            table.header([*逻辑页号*], [*物理块号*], [*说明*]),
            [0], [2], [页0映射到物理块2 ← 我们要查的],
            [1], [3], [页1映射到物理块3],
            [2], [7], [页2映射到物理块7],
          )
        ]

        计算物理地址：
        #figure()[
          #table(
            columns: (auto, auto),
            stroke: 0.5pt,
            [*计算公式*], [物理地址 = 物理块号 × 块大小 + 页内位移],
            [*代入数值*], [物理地址 = 2 × 2048 + 1500],
            [*计算过程*], [4096 + 1500 = 5596],
          )
        ]

        *结果：相对地址1500对应的物理地址为5596*

      2. 相对地址7000的物理地址计算：\
        $ 7000 ÷ 2048 = 3 余 808 $
        页号 = 3，页内位移 = 808

        但是页表中只有页0、1、2，没有页3
        这说明页3还未调入内存，会产生缺页中断
  ],
)

#answer-analysis(
  3,
  [
    (1) 需求矩阵 Need = Max - Allocation
    #figure()[#table(
        columns: (auto, auto, auto, auto, auto),
        stroke: none,
        align: center,
        [], [*A*], [*B*], [*C*], [*D*],
        [P0], [0], [0], [0], [0],
        [P1], [0], [7], [5], [0],
        [P2], [1], [0], [0], [2],
        [P3], [0], [0], [2], [0],
        [P4], [0], [6], [4], [2],
      )]

    (2) 是的, 因为存在一个安全序列 P0 → P2 → P1 → P3 → P4。

    (3) 可以分配. 如果分配后现有资源为 (1, 2, 1, 0)\
    完成P0后为 1,1,1,2,满足P2\
    完成P2后为 2,4,6,6,满足P1\
    完成P3后为 2,10,9,8,满足P4和P1. 我们可以找到安全序列\
  ],
)

#answer-analysis(
  4,
  [
    Current head: 100. Requests: 55, 58, 39, 18, 90, 160, 150, 38, 184.

    + *SSTF (最短寻道时间优先):*
      从100开始，每次选择距离当前磁头位置最近的请求：
      - 100 → 90 (距离10)
      - 90 → 58 (距离32)
      - 58 → 55 (距离3)
      - 55 → 39 (距离16)
      - 39 → 38 (距离1)
      - 38 → 18 (距离20)
      - 18 → 150 (距离132)
      - 150 → 160 (距离10)
      - 160 → 184 (距离24)

      SSTF服务顺序：90, 58, 55, 39, 38, 18, 150, 160, 184
      总寻道长度：$ 10+32+3+16+1+20+132+10+24 = 248 $
      平均寻道长度：$ 248 ÷ 9 = 27.56 $

    + *CSCAN* (循环扫描，先向磁道号增加方向移动):
      从100开始向磁道号增加方向：
      - 100 → 150 (距离50)
      - 150 → 160 (距离10)
      - 160 → 184 (距离24)
      - 184 → 199 (到磁盘末端，距离15)
      - 199 → 0 (返回磁盘开始，距离199)
      - 0 → 18 (距离18)
      - 18 → 38 (距离20)
      - 38 → 39 (距离1)
      - 39 → 55 (距离16)
      - 55 → 58 (距离3)
      - 58 → 90 (距离32)

      CSCAN服务顺序：150, 160, 184, 18, 38, 39, 55, 58, 90
      总寻道长度：$ 50+10+24+15+199+18+20+1+16+3+32 = 388 $
      平均寻道长度：$388 ÷ 9 = 43.11$
  ],
)


#answer-analysis(
  5,
  [
    #figure()[#table(
        columns: 2,
        align: left,
        [
          *已知参数*
          - 索引节点有7个地址项
          - 每个地址项大小：4字节
          - 磁盘块大小：256字节
          - 每块可存地址项数：256÷4=64个
        ],
        [
          *索引节点结构*\
          索引节点包含7个地址项：
          - 4个直接地址索引
          - 2个一级间接地址索引
          - 1个二级间接地址索引
        ],
      )]


    1. 直接索引
      - 4个直接地址 × 256字节/块 = 1024字节

    2. 一级间接索引
      - 每个一级索引块：256÷4 = 64个地址项
      - 2个一级索引 × 64个地址 × 256字节 = 32768字节

    3. 二级间接索引
      - 二级索引块可存64个一级索引地址
      - 1个二级索引 × 64个一级索引 × 64个地址 × 256字节
      - \= 64 × 64 × 256 = 1048576字节

    4. 总容量：1024 + 32768 + 1048576 = 1082368字节\
      转换为KB：1082368÷1024 = 1056KB ≈ 1.03MB
    #figure(caption: [文件索引节点结构分析])[#canvas({
        import draw: *

        // Apple配色
        let apple_blue = rgb("#007AFF")
        let apple_green = rgb("#34C759")
        let apple_red = rgb("#FF3B30")
        let apple_orange = rgb("#FF9500")
        let apple_purple = rgb("#AF52DE")
        let apple_gray = rgb("#8E8E93")
        let apple_light_gray = rgb("#F2F2F7")

        // 索引节点结构图
        content((-3, 6), [#text[*索引节点结构*]], anchor: "center")

        // 绘制索引节点
        rect((-4.5, 3.3), (-1.5, 5.8), stroke: 2pt + apple_blue)
        content((-3, 5.5), [#text(size: 8pt)[索引节点]], anchor: "center")

        // 直接地址索引 (4个)
        for i in range(4) {
          let y = 5.2 - i * 0.3
          rect((-4.3, y - 0.1), (-1.7, y + 0.1), fill: apple_light_gray, stroke: apple_gray)
          content((-3, y), [#text(size: 7pt)[直接#str(i + 1)]], anchor: "center")
        }

        // 一级间接地址索引 (2个)
        for i in range(2) {
          let y = 4.1 - i * 0.3
          rect((-4.3, y - 0.1), (-1.7, y + 0.1), fill: rgb("#FFE5B4"), stroke: apple_orange)
          content((-3, y), [#text(size: 6pt)[一级#str(i + 1)]], anchor: "center")
        }

        // 二级间接地址索引 (1个)
        rect((-4.3, 3.5), (-1.7, 3.7), fill: rgb("#FFB6C1"), stroke: apple_red)
        content((-3, 3.6), [#text(size: 7pt)[二级]], anchor: "center")

        // 直接索引示意
        content((0, 6.1), [#text[*直接索引*]], anchor: "center")
        for i in range(4) {
          let y = 5.7 - i * 0.4
          rect((0.5, y - 0.15), (2.5, y + 0.15), fill: apple_light_gray, stroke: apple_gray)
          content((1.5, y), [#text(size: 8pt)[数据块#str(i + 1)]], anchor: "center")
          // 连接线
          line((-1.5, 5.05 - i * 0.3), (0.5, y), stroke: apple_gray, mark: (end: ">"))
        }

        // 一级间接索引示意
        content((0, 3.8), [#text[*一级间接索引*]], anchor: "center")

        // 第一个一级间接块
        rect((0.5, 3.2), (1.5, 3.6), fill: rgb("#FFE5B4"), stroke: apple_orange)
        content((1, 3.4), [#text(size: 7pt)[索引块1]], anchor: "center")
        line((-1.5, 3.8), (0.5, 3.4), stroke: apple_orange, mark: (end: ">"))

        // 第二个一级间接块
        rect((0.5, 2.6), (1.5, 3.0), fill: rgb("#FFE5B4"), stroke: apple_orange)
        content((1, 2.8), [#text(size: 7pt)[索引块2]], anchor: "center")
        line((-1.5, 3.5), (0.5, 2.8), stroke: apple_orange, mark: (end: ">"))

        // 一级间接指向的数据块
        for i in range(3) {
          let y = 3.4 - i * 0.3
          rect((2, y - 0.1), (3, y + 0.1), fill: apple_light_gray, stroke: apple_gray)
          content((2.5, y), [#text(size: 6pt)[数据块]], anchor: "center")
        }
        line((1.5, 3.4), (2, 3.4), stroke: apple_orange, mark: (end: ">"))
        line((1.5, 2.8), (2, 2.8), stroke: apple_orange, mark: (end: ">"))
        content((2.5, 2.4), [#text(size: 6pt)[... (64块)]], anchor: "center")

        // 二级间接索引示意
        content((4.5, 6), [#text[*二级间接索引*]], anchor: "center")

        // 二级索引块
        rect((4, 5.2), (5, 5.6), fill: rgb("#FFB6C1"), stroke: apple_red)
        content((4.5, 5.4), [#text(size: 7pt)[二级索引块]], anchor: "center")
        line((-1.5, 3.7), (4, 5.4), stroke: apple_red, mark: (end: ">"))

        // 二级指向的一级索引块
        for i in range(3) {
          let y = 4.8 - i * 0.4
          rect((5.5, y - 0.15), (6.5, y + 0.15), fill: rgb("#FFE5B4"), stroke: apple_orange)
          content((6, y), [#text(size: 6pt)[一级块#str(i + 1)]], anchor: "center")
          if i < 2 { line((5, 5.4), (5.5, y), stroke: apple_red, mark: (end: ">")) }
        }
        content((6, 3.6), [#text(size: 6pt)[... (64块)]], anchor: "center")

        // 一级指向数据块
        for i in range(2) {
          let y = 4.6 - i * 0.3
          rect((7, y - 0.1), (8, y + 0.1), fill: apple_light_gray, stroke: apple_gray)
          content((7.5, y), [#text(size: 6pt)[数据块]], anchor: "center")
        }
        line((6.5, 4.8), (7, 4.6), stroke: apple_orange, mark: (end: ">"))
        content((7.5, 3.9), [#text(size: 6pt)[... (64块)]], anchor: "center")
      })
    ]


  ],
)


#answer-analysis(
  6,
  [
    Based on typical Linux file system structure and symbolic/hard links:\
    A: home
    B: sun
    C: test
    D: mydir
    E: work
  ],
)
#v(100%)
#answer-analysis(
  7,
  [
    #coder(```c
    Semphore  mutex = 1; // For mutual exclusion on the plate
    Semphore empty = 1; // Number of empty slots on the plate
    Semphore apple = 0; // Number of apples on the plate
    Semphore orange = 0; // Number of oranges on the plate

    father() { // Puts apples
      while (1) {
        P(empty);     // Wait for empty slot
        P(mutex);     // Lock plate
        Put apple on plate
        V(mutex);     // Unlock plate
        V(apple);     // Signal apple available
      }
    }

    mother() { // Puts oranges
      while (1) {
        P(empty);     // Wait for empty slot
        P(mutex);     // Lock plate
        Put orange on plate
        V(mutex);     // Unlock plate
        V(orange);    // Signal orange available
      }
    }

    son() { // Takes oranges
      while (1) {
        P(orange);    // Wait for an orange
        P(mutex);     // Lock plate
        Take orange from plate
        V(mutex);     // Unlock plate
        V(empty);     // Signal plate is empty
      }
    }

    daughter() { // Takes apples
      while (1) {
        P(apple);     // Wait for an apple
        P(mutex);     // Lock plate
        Take apple from plate
        V(mutex);     // Unlock plate
        V(empty);     // Signal plate is empty
      }
    }
    ```)

    #canvas({
      import draw: *

      // Apple配色
      let apple_blue = rgb("#007AFF")
      let apple_green = rgb("#34C759")
      let apple_red = rgb("#FF3B30")
      let apple_orange = rgb("#FF9500")
      let apple_purple = rgb("#AF52DE")
      let apple_gray = rgb("#8E8E93")
      let apple_light_gray = rgb("#F2F2F7")

      // 标题
      content((0, 9), [#text[*水果盘同步问题*]], anchor: "center")

      // 问题描述
      content(
        (0, 8.4),
        [#text(size: 10pt)[盘子容量：1个水果 | 爸爸放苹果 | 妈妈放橘子 | 儿子取橘子 | 女儿取苹果]],
        anchor: "center",
      )

      // 中央盘子
      circle((0, 5), radius: 1.2, fill: apple_light_gray, stroke: 2pt + apple_gray)
      content((0, 5), [#text[*盘子*]], anchor: "center")
      content((0, 4.5), [#text(size: 9pt)[容量：1]], anchor: "center")

      // 四个进程
      // 爸爸 - 左上
      circle((-4, 7), radius: 0.8, fill: rgb("#E3F2FD"), stroke: 2pt + apple_blue)
      content((-4, 7.2), [#text(size: 9pt, fill: apple_blue)[*爸爸*]], anchor: "center")
      content((-4, 6.8), [#text(size: 8pt)[放苹果🍎]], anchor: "center")

      // 妈妈 - 右上
      circle((4, 7), radius: 0.8, fill: rgb("#FFF3E0"), stroke: 2pt + apple_orange)
      content((4, 7.2), [#text(size: 9pt, fill: apple_orange)[*妈妈*]], anchor: "center")
      content((4, 6.8), [#text(size: 8pt)[放橘子🍊]], anchor: "center")

      // 儿子 - 左下
      circle((-4, 3), radius: 0.8, fill: rgb("#E8F5E8"), stroke: 2pt + apple_green)
      content((-4, 3.2), [#text(size: 9pt, fill: apple_green)[*儿子*]], anchor: "center")
      content((-4, 2.8), [#text(size: 8pt)[取橘子🍊]], anchor: "center")

      // 女儿 - 右下
      circle((4, 3), radius: 0.8, fill: rgb("#FCE4EC"), stroke: 2pt + apple_red)
      content((4, 3.2), [#text(size: 9pt, fill: apple_red)[*女儿*]], anchor: "center")
      content((4, 2.8), [#text(size: 8pt)[取苹果🍎]], anchor: "center")

      // 箭头表示操作方向
      line((-3.2, 6.5), (-1, 5.5), stroke: 2pt + apple_blue, mark: (end: ">"))
      line((3.2, 6.5), (1, 5.5), stroke: 2pt + apple_orange, mark: (end: ">"))
      line((-1, 4.5), (-3.2, 3.5), stroke: 2pt + apple_green, mark: (end: ">"))
      line((1, 4.5), (3.2, 3.5), stroke: 2pt + apple_red, mark: (end: ">"))

      // 信号量定义
      content((-7, 1.5), [#text[*信号量定义：*]], anchor: "west")
      content((-7, 1), [#text(size: 9pt)[• empty = 1 (空盘子数，初值1)]], anchor: "west")
      content((-7, 0.5), [#text(size: 9pt)[• apple = 0 (苹果数，初值0)]], anchor: "west")
      content((-7, 0), [#text(size: 9pt)[• orange = 0 (橘子数，初值0)]], anchor: "west")

      // 进程伪代码
      content((0, -0.5), [#text[*进程同步伪代码：*]], anchor: "center")

      // 爸爸进程
      rect((-8, -1.5), (-4.5, -3.5), stroke: apple_blue, fill: rgb("#E3F2FD"))
      content((-6.25, -1.3), [#text(size: 8pt, fill: apple_blue)[*爸爸进程*]], anchor: "center")
      content((-6.25, -1.7), [#text(size: 7pt)[while(true) {]], anchor: "center")
      content((-6.25, -2), [#text(size: 7pt)[ P(empty);]], anchor: "center")
      content((-6.25, -2.3), [#text(size: 7pt)[ 放苹果到盘中;]], anchor: "center")
      content((-6.25, -2.6), [#text(size: 7pt)[ V(apple);]], anchor: "center")
      content((-6.25, -2.9), [#text(size: 7pt)[}]], anchor: "center")

      // 妈妈进程
      rect((-4, -1.5), (-0.5, -3.5), stroke: apple_orange, fill: rgb("#FFF3E0"))
      content((-2.25, -1.3), [#text(size: 8pt, fill: apple_orange)[*妈妈进程*]], anchor: "center")
      content((-2.25, -1.7), [#text(size: 7pt)[while(true) {]], anchor: "center")
      content((-2.25, -2), [#text(size: 7pt)[ P(empty);]], anchor: "center")
      content((-2.25, -2.3), [#text(size: 7pt)[ 放橘子到盘中;]], anchor: "center")
      content((-2.25, -2.6), [#text(size: 7pt)[ V(orange);]], anchor: "center")
      content((-2.25, -2.9), [#text(size: 7pt)[}]], anchor: "center")

      // 儿子进程
      rect((0.5, -1.5), (4, -3.5), stroke: apple_green, fill: rgb("#E8F5E8"))
      content((2.25, -1.3), [#text(size: 8pt, fill: apple_green)[*儿子进程*]], anchor: "center")
      content((2.25, -1.7), [#text(size: 7pt)[while(true) {]], anchor: "center")
      content((2.25, -2), [#text(size: 7pt)[ P(orange);]], anchor: "center")
      content((2.25, -2.3), [#text(size: 7pt)[ 从盘中取橘子;]], anchor: "center")
      content((2.25, -2.6), [#text(size: 7pt)[ V(empty);]], anchor: "center")
      content((2.25, -2.9), [#text(size: 7pt)[}]], anchor: "center")

      // 女儿进程
      rect((4.5, -1.5), (8, -3.5), stroke: apple_red, fill: rgb("#FCE4EC"))
      content((6.25, -1.3), [#text(size: 8pt, fill: apple_red)[*女儿进程*]], anchor: "center")
      content((6.25, -1.7), [#text(size: 7pt)[while(true) {]], anchor: "center")
      content((6.25, -2), [#text(size: 7pt)[ P(apple);]], anchor: "center")
      content((6.25, -2.3), [#text(size: 7pt)[ 从盘中取苹果;]], anchor: "center")
      content((6.25, -2.6), [#text(size: 7pt)[ V(empty);]], anchor: "center")
      content((6.25, -2.9), [#text(size: 7pt)[}]], anchor: "center")

      // 同步关系说明
      content((0, -4.2), [#text[*同步关系分析：*]], anchor: "center")
      content((-7, -4.7), [#text(size: 9pt)[1. 爸爸和妈妈竞争empty信号量（空盘子）]], anchor: "west")
      content(
        (-7, -5.1),
        [#text(size: 9pt)[2. 女儿等待apple信号量（苹果），儿子等待orange信号量（橘子）]],
        anchor: "west",
      )
      content((-7, -5.5), [#text(size: 9pt)[3. 取完水果后释放empty信号量，允许继续放入]], anchor: "west")
      content((-7, -5.9), [#text(size: 9pt)[4. 确保盘子最多只有1个水果，且水果类型匹配消费者]], anchor: "west")

      // 状态转换示例
      content((0, -6.5), [#text[*状态转换示例：*]], anchor: "center")
      content((-3, -7), [#text(size: 8pt)[空盘 → 爸爸放苹果 → 女儿取苹果 → 空盘]], anchor: "west")
      content((-3, -7.3), [#text(size: 8pt)[空盘 → 妈妈放橘子 → 儿子取橘子 → 空盘]], anchor: "west")
    })
    #text(size:8pt)[
      *P操作（Proberen，尝试）*
      - *功能*: 用于申请资源。
      - *操作逻辑*:
        1. 检查信号量的值是否大于0。
        2. 如果大于0，则将信号量值减1，表示占用一个资源。
        3. 如果信号量值等于0，则进程进入等待状态，直到资源可用。
      - *作用*: 阻塞进程，确保资源的互斥使用。

      *V操作（Verhogen，增加）*
      - *功能*: 用于释放资源。
      - *操作逻辑*:
        1. 将信号量的值加1，表示释放一个资源。
        2. 如果有等待的进程，则唤醒其中一个进程。
      - *作用*: 唤醒等待的进程，允许资源的继续使用。

        *信号量机制的特点*
      - 信号量是一个整数，用于记录资源的可用数量。
      - P操作和V操作必须是原子操作，不能被中断。

      ]
  ],
)
