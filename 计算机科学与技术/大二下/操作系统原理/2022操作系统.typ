#set document(title: "2022年《操作系统》期末试题")
#set heading(numbering: "一、")
#set text(font: "pingfang sc", lang: "zh")
#import "@preview/cetz-plot:0.1.1": *
#import "@preview/cetz:0.3.4": *
// 这个是填空题要用的横线
#let uline(answer: "", width: 4em) = {
  box(width: width, stroke: (bottom: 0.5pt), outset: (bottom: 4pt))[#answer]
}

// 代码块要用这个函数 (虽然本试卷未使用)
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
#align(center)[#text(size: 1.8em, font: "Heiti SC")[2022年河南工业大学期末考试]]
#align(center)[#text(size: 1.8em, font: "Heiti SC")[操作系统]] // Modified subject
#text(font: "Heiti SC")[注意事项]：
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答题卡上所粘贴的条形码上的姓名、准考证号与您本人是否相符。
= 选择题
#set enum(numbering: "1.")
1. 操作系统最主要的任务是( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 管理资源], [B. 并发], [C. 异步], [D. 虚拟],
  )

2. ( )是操作系统形成的标志。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 单道批处理系统], [B. 多道批处理系统], [C. 分时系统], [D. 实时系统],
  )

3. 进程从运行状态进入就绪状态的原因可能是( )。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 被选中占有处理机], [B. 等待某一事件], [C. 等待的事件已发生], [D. 时间片用完],
  )

4. 在信号量机制中, 哪种信号量的 wait 操作, 不满足“让权等待”?( )
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 整型信号], [B. 记录型信号量], [C. And 型信号量], [D. 一般信号量集],
  )

5. 操作系统中的存储管理是指对( )的管理。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 主存], [B. 辅存], [C. Cache], [D. 以上都不是],
  )

6. 在请求分页管理方式中, 页表中的状态位(存在位)用来指示对应页( )。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 是否被修改过], [B. 是否允许动态增长], [C. 是否已调入内存], [D. 是否已置换],
  )

7. 可变式分区分配方案中, 某一作业完成后, 系统收回其主存空间, 并与相邻空闲区合并, 为此需修改空闲区表, 造成空闲区数减1的情况是( )。
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 无上邻空闲区, 也无下邻空闲区], [B. 有上邻空闲区, 但无下邻空闲区],
    [C. 有下邻空闲区, 但无上邻空闲区], [D. 有上邻空闲区, 也有下邻空闲区],
  )

8. 典型的分时系统采用的进程调度算法是( )。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 先来先服务], [B. 短进程优先], [C. 高优先权优先], [D. 时间片轮转],
  )

9. 通道是一种( )。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. I/O端口], [B. 数据通道], [C. 软件工具], [D. I/O专用处理器],
  )

10. 基本分段存储管理方式中, 逻辑地址的地址格式是( )地址。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 线性], [B. 一维], [C. 二维], [D. 三维],
  )

11. 动态重定位是在作业( )中进行的。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 编译过程], [B. 链接过程], [C. 装入过程], [D. 执行过程],
  )

12. 为实现设备的分配, 应为每系统中所有的设备配置一张( )。
  #grid(
    columns: 4,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 逻辑设备表], [B. 设备控制表], [C. 系统设备表], [D. 设备开关表],
  )

13. 位示图法可用于( )。
  #grid(
    columns: 2,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 磁盘空间的管理], [B. 磁盘的驱动调度],
    [C. 文件目录的查找], [D. 页式虚拟存贮管理中的页面调度],
  )

14. 哪一种文件的共享方式, 可以允许文件主随时删除共享文件?( )
  #grid(
    columns: 2,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. FCB拷贝复制共享], [B. 基于索引结点的共享方式],
    [C. 基于符号链的共享方式], [D. 以上都不对],
  )

15. 文件系统中, 目录管理的最基本功能是( )。
  #grid(
    columns: 2,
    column-gutter: 1fr,
    gutter: 10pt,
    [A. 实现虚拟存储], [B. 实现文件的按名存取],
    [C. 提高外存的读写速度], [D. 用于存储系统文件],
  )

= 填空题 (共10空, 每空1分, 共10分)
#set enum(numbering: "1.")
1. 进程存在的唯一标志是 #uline(width: 6em)。
2. 处理机调度的层次包括：高级调度、低级调度、#uline(width: 6em)。
3. 进程调度包括两种调度方式:非抢占式进程调度方式、#uline(width: 8em) 进程调度方式。
4. 若P、V操作的信号量S初值为2, 当前值为-1, 则表示有 #uline(width: 2em) 个等待进程。
5. 数据传输控制方式可分为程序 I/O 控制方式、中断控制方式、#uline(width: 8em) 和 I/O 通道控制方式。
6. 为了能对一个文件进行正确的存取, 必须为文件设置用于描述和控制文件的数据结构, 称之为 #uline(width: 10em)。
7. 设备驱动程序是I/O进程和 #uline(width: 8em) 之间的通信程序。
8. 文件系统管理的对象包括：文件、目录、#uline(width: 8em)。
9. 从用户的角度, 观察到的文件的组织形式叫做文件的 #uline(width: 8em)。
10. 在引入线程的OS 中, 独立调度和分派的基本单位是线程, 资源分配的单位是 #uline(width: 6em)。

= 简答题 (共3题, 每题5分, 共15分)
#set enum(numbering: "1.")
1. 什么是操作系统? 操作系统的特征有哪些?
2. 请画出三种基本状态的转换图, 并注明各状态转换时的条件。
3. 什么是虚拟存储器? 它具有哪些基本特征?

= 算法综合题 (共6题, 每题10分, 共60分)
#set enum(numbering: "1.")
1. 假设一个系统有5个进程, 它们的到达时间和服务时间如表1所示, 忽略I/O及其他开销时间, 计算先来先服务FCFS、短进程优先SPF进行CPU调度, 请完成表2。(10分)

  #grid(
    columns: 2,
    gutter: 1fr,
    align: horizon,
    [
      #figure(
        table(
          columns: 3,
          align: center,
          stroke: 0.5pt,
          [*进程*], [*到达时间*], [*服务时间*],
          [A], [0], [3],
          [B], [2], [6],
          [C], [4], [4],
          [D], [6], [5],
          [E], [8], [2],
        ),
        caption: [表1 进程到达和服务时间],
      )
    ],
    [
      #figure(
        table(
          columns: (
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
            auto,
          ), // 1 for row label col + 5 for FCFS + 5 for SPF
          align: center,
          stroke: 0.5pt,
          // Row 1: Main Headers (FCFS, SPF)
          [], // Empty cell for the top-left corner
          table.cell(colspan: 5)[*FCFS*],
          table.cell(colspan: 5)[*SPF*],
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

2. 系统有(A, B, C, D)四种资源和五个进程, 在银行家算法中, 某时刻出现下述资源分配情况
  #figure()[#table(
      columns: 4,
      align: center,
      stroke: none,
      [*Process*], [*Allocation (A,B,C,D)*], [*Need (A,B,C,D)*], [*Available (A,B,C,D)*],
      [P0], [(0, 0, 3, 2)], [(0, 0, 1, 2)], table.cell(rowspan: 5)[(1, 6, 2, 2)],
      [P1], [(1, 0, 0, 0)], [(1, 7, 5, 0)],
      [P2], [(1, 3, 5, 4)], [(2, 3, 5, 6)],
      [P3], [(0, 3, 3, 2)], [(0, 6, 5, 2)],
      [P4], [(0, 0, 1, 4)], [(0, 6, 5, 6)],
    )]
  试问:\
  (1) 该状态是否安全? 请写出分析过程。(6分)\
  (2) 若进程 P2 提出请求 Request(1, 2, 2, 2), 系统能否分配给它资源? 写出分析过程。(4分)
  #v(3cm)
3. 在一个请求分页系统中, 假如一个作业的页面走向为 0, 1, 4, 2, 0, 2, 6, 5, 1, 2, 3, 2, 1, 2, 6, 2. 当分配给该作业的物理块数为3时, 采用最近最久未使用(LRU)页面替换算法, 计算访问过程中所发生的缺页次数。(写出具体过程) (10分)
  #v(4cm)
4. 对于移动头磁盘, 假设磁头现在位于25号磁道上, 且基于磁道号的磁盘访问请求序列(按提出时间的先后次序排列)为 39, 62, 18, 28, 100, 130, 90. 试采用最短寻道时间优先(SSTF)调度算法和电梯调度(SCAN)算法(规定先向磁道号变小的方向移动), 分别给出相关磁盘访问请求处理的先后次序, 并计算相应的平均寻道长度(若无法除尽, 直接用分数表示)。(10分)
  #v(3cm)
5. 设作业A(30K), B(70K) 和 C(50K) 依次请求内存分配, 内存现有 F1(100K), F2(50K) 两个空闲区, 如图所示。分别采用最佳适应算法和最差适应算法, 画出每一步的内存分配情况示意图。(10分)

  #table(
    columns: 1,
    stroke: 0.5pt,
    align: center,
    [#sym.space],
    [F1(100K)],
    [#sym.space],
    [F2(50K)],
    [#sym.space],
  )

6. 利用信号量机制写出一种不会发生死锁的“哲学家就餐问题”解决方案。(10分)


// MARK: An

#pagebreak()
#align(center)[= 参考答案]
#set heading(numbering: "1.", level: 2)
#let answer_block(num, answer, explanation, breakable: false) = {
  block(
    width: 100%,
    breakable: breakable,
  )[
    #text(
      weight: "bold",
      size: 10pt,
    )[#num. 答案：#answer]

    #text(size: 9pt)[
      #explanation
    ]
  ]
}

== 选择题答案
#answer_block(1, "A", [操作系统的主要任务是管理资源。])
#answer_block(
  2,
  "B",
  [多道批处理系统是操作系统形成的标志。
    #figure(caption: [操作系统发展历程])[#canvas(
        {
          import draw: *
          // Apple配色方案
          let colors = (
            blue: rgb("#007AFF"),
            green: rgb("#34C759"),
            orange: rgb("#FF9500"),
            red: rgb("#FF3B30"),
            purple: rgb("#AF52DE"),
            gray: rgb("#8E8E93"),
          )

          // 时间线主轴
          line((0, 0), (14, 0), stroke: (thickness: 3pt, paint: colors.gray))

          // 时间点标记
          let timeline_points = (
            (pos: 2, year: "1950s", color: colors.blue),
            (pos: 5, year: "1960s", color: colors.green),
            (pos: 8, year: "1970s", color: colors.orange),
            (pos: 11, year: "1980s+", color: colors.red),
          )

          for point in timeline_points {
            // 时间点圆圈
            circle((point.pos, 0), radius: 0.15, fill: point.color, stroke: none)

            // 年代标签
            content((point.pos, -0.8), text(size: 10pt, fill: point.color)[*#point.year*])
          }

          // 系统发展阶段
          let systems = (
            (pos: 2, title: "A. 单道批处理系统", desc: "Single Batch Processing", features: (), color: colors.blue),
            (pos: 5, title: "B. 多道批处理系统", desc: "Multi-programming Batch", features: (), color: colors.green),
            (pos: 8, title: "C. 分时系统", desc: "Time-sharing System", features: (), color: colors.orange),
            (pos: 11, title: "D. 实时系统", desc: "Real-time System", features: (), color: colors.red),
          )

          for (i, sys) in systems.enumerate() {
            let y_offset = if calc.even(i) { 2.5 } else { -2.5 }

            // 连接线
            line((sys.pos, 0), (sys.pos, y_offset * 0.8), stroke: (thickness: 2pt, paint: sys.color, dash: "dashed"))

            // 系统框
            rect(
              (sys.pos - 1.2, y_offset - 0.4),
              (sys.pos + 1.2, y_offset + 0.8),
              fill: sys.color.transparentize(85%),
              stroke: (thickness: 2pt, paint: sys.color),
              radius: 0.1,
            )

            // 系统标题
            content((sys.pos, y_offset + 0.4), text(size: 9pt, fill: sys.color, weight: "bold")[#sys.title])

            // 英文描述
            content((sys.pos, y_offset + 0.1), text(size: 8pt, fill: sys.color.darken(20%), style: "italic")[#sys.desc])

            // 特性列表
            for (j, feature) in sys.features.enumerate() {
              content((sys.pos, y_offset - 0.1 - j * 0.2), text(size: 7pt, fill: colors.gray.darken(30%))[• #feature])
            }
          }

          // 发展趋势箭头
          for i in range(systems.len() - 1) {
            let start_pos = systems.at(i).pos + 0.5
            let end_pos = systems.at(i + 1).pos - 0.5

            line(
              (start_pos, 0.3),
              (end_pos, 0.3),
              stroke: (thickness: 2pt, paint: colors.purple),
              mark: (end: ">", fill: colors.purple),
            )
          }


          // 发展趋势标注
          content((7, 0.7), text(size: 8pt, fill: colors.purple, style: "italic")[发展趋势])
        },
      )
    ],],
)
#answer_block(
  3,
  "D",
  [进程从运行状态进入就绪状态的原因可能是时间片用完。不做过多解释。
    #figure(
      canvas({
        import draw: *
        let node(x, y, intext, name) = content((x, y), [#box(stroke: 1pt, inset: 10pt)[#intext]], name: name)

        node(0, 6, [就绪], "就绪")
        node(-3, 3, [阻塞], "阻塞")
        node(3, 3, [执行], "执行")
        line("就绪", "执行", mark: (end: ">"))
        line("执行", "阻塞", mark: (end: ">"))
        line("阻塞", "就绪", mark: (end: ">"))
        line((0.7, 6), (3.3, 3.5), mark: (start: ">"))
        content((0, 2.7), [IO 请求])
        content((-2, 4.5), [IO 完成])
        content((1, 4.5), [进程调度])
        content((3, 4.5), [时间片完])
      }),
      caption: [三种基本状态及转换],
    )<三种基本状态及转换>],
)
#answer_block(
  4,
  "A",
  [“让权等待”（blocking wait）指的是：
    当进程执行 wait() 操作时，如果资源不可用，该进程会让出 CPU，进入等待队列，直到条件满足再被唤醒。也就是主动“让出执行权”，不再占用 CPU 时间片。\
    整型信号
    • 最简单的信号量实现，实际上就是一个整数变量。wait 操作通常是不释放 CPU，而是不断地轮询变量
    ```C
    wait(S) {
      while (S <= 0); // busy wait
      S--;
    }
    ```],
)

#answer_block(
  5,
  "A",
  [主存的存储管理是操作系统的核心任务之一。主存是计算机中速度最快的存储器，操作系统需要对其进行有效的管理，以确保各个进程能够高效地运行。],
)
#answer_block(
  6,
  "C",
  [页表中的状态位（存在位）用来指示对应页是否已调入内存。若该位为1，则表示该页已在内存中；若为0，则表示该页不在内存中。],
)
#answer_block(
  7,
  [D],
  [],
)
#answer_block(
  8,
  "D",
  [

    分时系统（Time-Sharing System）采用时间片轮转调度算法：

    1. 把处理器时间划分成很短的时间片，按顺序轮流分配给多个用户或进程执行，使每个用户都感觉自己独占系统。

    2. 分时系统的主要特点：
      - 时间片机制：系统将 CPU 时间划分成一段段时间片
      - 多用户共享：支持多个用户/进程同时登录与操作
      - 响应快速：每个用户响应时间通常小于 1 秒
      - 并发执行：支持多个程序"同时"运行（逻辑并发）
      - 自动切换：系统负责在多个用户/进程之间快速切换

    3. 调度过程示例：三个用户运行程序 A、B、C，时间片设为 100 毫秒
      ```
      时间轴：| A | B | C | A | B | C | A | B | ...
            ↑每100ms切换一次↑
      ```

    4. 系统类型对比：
      #table(
        columns: 4,
        align: center,
        stroke: 0.5pt,
        [*类型*], [*用户互动*], [*响应速度*], [*适用场景*],
        [分时系统], [有], [快（秒级）], [多用户共享计算机],
        [批处理系统], [无], [慢（分钟级）], [数据处理任务],
        [实时系统], [有], [很快（毫秒级）], [工业控制、航空航天],
      )
  ],
)

#answer_block(
  9,
  "D",
  [通道是一种 I/O 专用处理器，用于处理输入输出操作。它可以独立于 CPU 执行 I/O 操作，从而提高系统的整体性能。],
)
#answer_block(
  10,
  "C",
  [基本分段存储管理方式中，逻辑地址的地址格式是二维地址。每个段有一个段号和段内偏移量。

    🎯 示例逻辑地址

    逻辑地址为 (1, 120)
    表示：
    • 访问的是段号 1（数据段）
    • 在该段的偏移量为 120],
)

#answer_block(
  11,
  "D",
  [执行过程中进行动态重定位。操作系统在装入程序时，将逻辑地址转换为物理地址，并进行必要的调整。动态重定位允许程序在运行时根据实际内存情况进行地址调整。],
)

#answer_block(
  12,
  "B",
  [设备控制表用于描述和控制系统中所有设备的状态和属性。每个设备都有一个对应的控制块，操作系统通过该表来管理设备的分配和使用。],
)

#answer_block(
  13,
  "A",
  [位示图法可用于磁盘空间的管理。它通过使用位图来表示磁盘上每个块的使用情况，1 表示已分配，0 表示空闲。

    #figure(
      canvas({
        import draw: *
        // 绘制位示图网格
        let rows = 4
        let cols = 8
        let cell_size = 0.4

        // 示例位图数据 (1表示已分配，0表示空闲)
        let bitmap = (
          (1, 1, 0, 1, 0, 0, 1, 1),
          (0, 1, 1, 0, 0, 1, 0, 1),
          (1, 0, 0, 0, 1, 1, 1, 0),
          (0, 0, 1, 1, 0, 0, 0, 1),
        )

        for i in range(rows) {
          for j in range(cols) {
            let x = j * cell_size
            let y = 2 - i * cell_size

            // 根据位值选择颜色
            let fill_color = if bitmap.at(i).at(j) == 1 {
              black // 黑色表示已分配
            } else {
              white // 白色表示空闲
            }

            // 绘制方格
            rect(
              (x, y),
              (x + cell_size, y + cell_size),
              fill: fill_color,
              stroke: (thickness: 1pt, paint: black),
            )

            // 在方格中心显示数字
            let text_color = if bitmap.at(i).at(j) == 1 { white } else { black }
            content(
              (x + cell_size / 2, y + cell_size / 2),
              text(size: 8pt, weight: "bold", fill: text_color)[#bitmap.at(i).at(j)],
            )
          }
        }


        // 添加图例
        content((0, 0.45), text(size: 10pt, weight: "bold")[图例：])
        rect((1, 0.3), (1.3, 0.6), fill: black, stroke: 1pt)
        content((2, 0.45), text(size: 9pt)[已分配])
        rect((3, 0.3), (3.3, 0.6), fill: white, stroke: 1pt)
        content((4, 0.45), text(size: 9pt)[0 = 空闲])
      }),
      caption: [磁盘空间位示图管理示例],
    )
  ],
)


#answer_block(
  14,
  "A",
  [FCB拷贝复制共享方式允许文件主随时删除共享文件。因为每个用户都有自己的文件控制块（FCB）副本，删除操作不会影响其他用户的访问。],
)

#answer_block(
  15,
  "B",
  [目录管理的最基本功能是实现文件的按名存取。通过目录结构，用户可以方便地查找和访问文件。],
)
== 填空题答案
#answer_block(
  1,
  "进程控制块(PCB)",
  [进程存在的唯一标志是进程控制块(PCB)。PCB包含了进程的所有信息，如进程状态、程序计数器、寄存器内容等。
    ```C
    struct PCB {
        int pid;                    // 进程ID
        int ppid;                   // 父进程ID
        char state;                 // 进程状态
        int priority;               // 优先级
        int* page_table;            // 页表指针
        struct File* open_files[]; // 打开的文件列表
        CPU_Context context;       // CPU寄存器信息（上下文）
    };
    ```
  ],
)
#answer_block(
  2,
  "中级调度",
  [处理机调度的层次包括：高级调度、低级调度、中级调度。高级调度决定哪些进程进入就绪队列，低级调度决定哪个就绪进程获得 CPU 时间片，中级调度则在需要时将进程从内存换出或换入。],
)
#answer_block(
  3,
  "抢占式",
  [进程调度包括两种调度方式：非抢占式进程调度方式和抢占式进程调度方式。非抢占式调度方式下，进程在运行时不会被强制中断，而抢占式调度方式允许操作系统在任何时候中断正在运行的进程。],
)
#answer_block(
  4,
  "3",
  [若P、V操作的信号量S初值为2, 当前值为-1, 则表示有3个等待进程。因为信号量的当前值为负数时，表示有多少个进程在等待该信号量。],
)
#answer_block(
  5,
  [DMA方式],
  [数据传输控制方式可分为程序 I/O 控制方式、中断控制方式、DMA方式和 I/O 通道控制方式。DMA（直接内存访问）允许设备直接与内存交换数据，而不需要 CPU 的干预，从而提高了数据传输效率。
  ],
)
#answer_block(
  5,
  [DMA方式],
  [数据传输控制方式可分为程序 I/O 控制方式、中断控制方式、DMA方式和 I/O 通道控制方式。DMA（直接内存访问）允许设备直接与内存交换数据，而不需要 CPU 的干预，从而提高了数据传输效率。

    #figure(
      table(
        columns: 6,
        align: center,
        stroke: 0.5pt,
        [*控制方式*], [*CPU参与度*], [*数据传输*], [*中断使用*], [*效率*], [*适用场景*],
        [程序I/O], [完全参与], [CPU逐字节传输], [轮询检查], [低], [简单设备],
        [中断控制], [部分参与], [CPU按块传输], [中断通知], [中等], [键盘、鼠标],
        [DMA方式], [最少参与], [硬件直接传输], [传输完成中断], [高], [磁盘、网卡],
        [I/O通道], [几乎不参与], [通道处理器控制], [通道完成中断], [最高], [大型机系统],
      ),
      caption: [四种I/O控制方式对比],
    )

    详细说明：
    1. *程序I/O方式*：CPU全程参与，效率最低，适合简单设备
    2. *中断控制方式*：CPU在设备就绪时响应中断，减少了等待时间
    3. *DMA方式*：设备控制器直接访问内存，CPU只需启动和结束时参与
    4. *I/O通道方式*：专用处理器处理I/O操作，CPU几乎完全解放
  ],
)
#answer_block(
  6,
  "文件控制块(FCB)",
  [为了能对一个文件进行正确的存取，必须为文件设置用于描述和控制文件的数据结构，称之为文件控制块(FCB)。FCB包含了文件的元数据，如文件名、大小、位置等信息。],
)
#answer_block(
  7,
  "设备控制器",
  [设备驱动程序是I/O进程和设备之间的通信程序。它负责将I/O请求转换为设备可以理解的格式，并处理设备的响应。 • I/O 进程：指用户程序或系统中的 I/O 管理模块。
    • 设备控制器：是连接 CPU 和外设的硬件组件，负责控制具体设备的工作，如磁盘控制器、显示控制器等。
    • 设备驱动程序：是操作系统中用于实现 软件与硬件之间通信 的模块，相当于中间翻译器。],
)

#answer_block(
  8,
  [设备控制器],
  [文件系统管理的对象包括：文件、目录、设备控制器。设备控制器是操作系统与硬件设备之间的接口，负责管理和控制外部设备的操作。],
)
#answer_block(
  9,
  "逻辑视图",
  [从用户的角度，观察到的文件的组织形式叫做文件的逻辑视图。逻辑视图是用户对文件的抽象表示，与物理存储方式无关。],
)
#answer_block(
  10,
  "进程",
  breakable: true,
  [在引入线程的OS 中，独立调度和分派的基本单位是线程，资源分配的单位是进程。线程是进程内的执行单元，多个线程可以共享同一进程的资源。
    #line(length: 100%, stroke: 0.5pt)

    *一句话理解：*

    #table(
      columns: 2,
      align: center,
      stroke: 0.5pt,
      [*名称*], [*简单定义*],
      [进程（Process）], [是程序在操作系统中运行的实例，是资源分配的最小单位。],
      [线程（Thread）], [是进程内部的一个执行单元，是CPU 调度的最小单位。],
    )

    #line(length: 100%, stroke: 0.5pt)

    *什么是进程（Process）？*

    一个运行中的程序就是一个进程。
    - 比如你打开了两个 Word 文件，这就是两个进程，虽然程序是同一个。
    - 每个进程有自己独立的：地址空间、代码、数据、堆栈、打开的文件、资源权限等。
    - 操作系统调度多个进程实现"多任务"。

    举例：
    - 打开微信 → 一个进程
    - 打开浏览器 → 一个进程

    *什么是线程（Thread）？*

    线程是进程中的一个执行流，多个线程可以在同一个进程里并行执行。
    - 多个线程共享该进程的内存资源（如数据段、堆、文件等），但有自己独立的栈和寄存器上下文。
    - 多线程能提高程序的并发性和资源利用率。

    举例：
    打开微信（主线程） → 接收消息（线程A）、播放语音（线程B）、文件下载（线程C）

    *对比总结表格：*

    #table(
      columns: 3,
      align: left,
      stroke: 0.5pt,
      [*比较项*], [*进程（Process）*], [*线程（Thread）*],
      [定义], [程序的执行实例], [进程内的执行单元],
      [是否独立], [独立单元（互不干扰）], [线程间共享进程资源（不独立）],
      [拥有资源], [拥有自己的资源（如内存空间）], [共享进程资源],
      [通信开销], [进程间通信（IPC）开销较大], [线程间通信方便（如共享变量）],
      [创建销毁代价], [大，操作系统需分配资源], [小，开销更低],
      [CPU 调度], [是调度单位（早期）], [是现代调度的最小单位],
      [举例], [浏览器进程、Word 进程等], [浏览器标签页线程、下载线程、JS 线程],
    )

    *类比理解：*

    #table(
      columns: 3,
      align: center,
      stroke: 0.5pt,
      [*类比对象*], [*进程*], [*线程*],
      [公司/工厂], [整个公司（独立空间）], [公司内员工（共享资源）],
      [操场跑步], [每个跑道是一进程], [跑道上的人是线程],
    )
  ],
)

== 简答题答案
#answer_block(
  1,
  "",
  [操作系统是管理计算机硬件和软件资源的系统软件，为用户提供便利的操作界面。\ 操作系统的特征包括：资源管理、并发处理、虚拟化、抽象化、可靠性和安全性。],
)

#answer_block(
  2,
  "",
  [三种基本状态的转换 @三种基本状态及转换 所示],
)
#answer_block(
  3,
  "",
  [虚拟存储器是操作系统提供的一种内存管理技术，它允许程序使用比实际物理内存更大的连续地址空间。它的基本特征包括：\

    #figure(
      table(
        columns: 3,
        align: left,
        stroke: 0.5pt,
        [*特征*], [*具体含义*], [*实现机制*],
        [离散性], [程序可分散存储], [分页/分段技术],
        [多次性], [程序可多次调入调出], [请求调页/段],
        [对换性], [内存与外存间数据交换], [页面置换算法],
        [虚拟性], [逻辑容量大于物理容量], [地址映射机制],
      ),
      caption: [虚拟存储器基本特征详解],
    )],
)
== 算法综合题答案
#answer_block(
  1,
  "",
  [先来先服务（FCFS）和短进程优先（SPF）调度算法的计算过程如下：\
    *先来先服务（FCFS）算法计算：*

    按到达时间排序：A(0,3) → B(2,6) → C(4,4) → D(6,5) → E(8,2)

    执行过程：
    - A: 0→3 (完成时间=3)
    - B: 3→9 (完成时间=9)
    - C: 9→13 (完成时间=13)
    - D: 13→18 (完成时间=18)
    - E: 18→20 (完成时间=20)

    *短进程优先（SPF）算法计算：*

    按服务时间排序，但需考虑到达时间：
    - t=0: A到达，开始执行A(0→3)
    - t=3: B,C都已到达，选择服务时间短的B开始(3→9)
    - t=9: C,D,E都已到达，按服务时间排序：E(2)\<C(4)\<D(5)，执行E(9→11)
    - t=11: 执行C(11→15)
    - t=15: 执行D(15→20)

    计算公式：
    - 周转时间 = 完成时间 - 到达时间
    - 带权周转时间 = 周转时间 ÷ 服务时间

    #figure(
      table(
        columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto, auto, auto),
        align: center,
        stroke: 0.5pt,
        [],
        table.cell(colspan: 5)[*FCFS*],
        table.cell(colspan: 5)[*SPF*],
        [*进程*], [*A*], [*B*], [*C*], [*D*], [*E*], [*A*], [*B*], [*C*], [*D*], [*E*],
        [*完成时间*], [3], [9], [13], [18], [20], [3], [9], [15], [20], [11],
        [*周转时间*], [3], [7], [9], [12], [12], [3], [7], [11], [14], [3],
        [*带权周转时间*], [1], [7/6], [9/4], [12/5], [6], [1], [7/6], [11/4], [14/5], [3/2],
      ),
      caption: [表2 完整计算结果],
    )

  ],
)
#answer_block(2, "", breakable: true)[
  #columns(2)[
    #set text(font: "pingfang sc", lang: "zh", size: 8pt)
    *银行家算法分析*

    *（1）安全性分析（6分）*

    给定状态：
    - Available = (1, 6, 2, 2)
    - 各进程的 Allocation 和 Need 如表所示

    使用银行家算法检查安全性：

    #table(
      columns: 6,
      align: center,
      stroke: 0.5pt,
      [*进程*], [*Allocation*], [*Need*], [*Available*], [*可完成*], [*新Available*],
      [P0], [(0,0,3,2)], [(0,0,1,2)], [(1,6,2,2)], [✓], [(1,6,5,4)],
      [P1], [(1,0,0,0)], [(1,7,5,0)], [(1,6,5,4)], [×], [-],
      [P2], [(1,3,5,4)], [(2,3,5,6)], [(1,6,5,4)], [×], [-],
      [P3], [(0,3,3,2)], [(0,6,5,2)], [(1,6,5,4)], [✓], [(1,9,8,6)],
      [P4], [(0,0,1,4)], [(0,6,5,6)], [(1,9,8,6)], [✓], [(1,9,9,10)],
    )

    继续检查剩余进程：
    #table(
      columns: 6,
      align: center,
      stroke: 0.5pt,
      [*进程*], [*Allocation*], [*Need*], [*Available*], [*可完成*], [*新Available*],
      [P1], [(1,0,0,0)], [(1,7,5,0)], [(1,9,9,10)], [✓], [(2,9,9,10)],
      [P2], [(1,3,5,4)], [(2,3,5,6)], [(2,9,9,10)], [✓], [(3,12,14,14)],
    )

    *安全序列：P0 → P3 → P4 → P1 → P2*

    结论：该状态是安全的。

    *（2）请求分析（4分）*

    P2 请求 Request(1, 2, 2, 2)：

    *步骤1：检查请求合法性*
    - Request(1,2,2,2) ≤ Need(2,3,5,6) ✓
    - Request(1,2,2,2) ≤ Available(1,6,2,2) ？
      - 1 ≤ 1 ✓
      - 2 ≤ 6 ✓
      - 2 ≤ 2 ✓
      - 2 ≤ 2 ✓

    *步骤2：试分配*
    ```
    Available' = (1,6,2,2) - (1,2,2,2) = (0,4,0,0)
    Allocation'[P2] = (1,3,5,4) + (1,2,2,2) = (2,5,7,6)
    Need'[P2] = (2,3,5,6) - (1,2,2,2) = (1,1,3,4)
    ```

    *步骤3：安全性检查*]
  新状态下的资源分配：
  #table(
    columns: 4,
    align: center,
    stroke: 0.5pt,
    [*进程*], [*Allocation'*], [*Need'*], [*Available'*],
    [P0], [(0,0,3,2)], [(0,0,1,2)], table.cell(rowspan: 5)[(0,4,0,0)],
    [P1], [(1,0,0,0)], [(1,7,5,0)],
    [P2], [(2,5,7,6)], [(1,1,3,4)],
    [P3], [(0,3,3,2)], [(0,6,5,2)],
    [P4], [(0,0,1,4)], [(0,6,5,6)],
  )

  检查各进程是否可完成：
  - P0: Need(0,0,1,2) ≤ Available(0,4,0,0) ？ 1 > 0, 2 > 0 ×
  - P1: Need(1,7,5,0) ≤ Available(0,4,0,0) ？ 1 > 0, 7 > 4, 5 > 0 ×
  - P2: Need(1,1,3,4) ≤ Available(0,4,0,0) ？ 1 > 0, 3 > 0, 4 > 0 ×
  - P3: Need(0,6,5,2) ≤ Available(0,4,0,0) ？ 6 > 4, 5 > 0, 2 > 0 ×
  - P4: Need(0,6,5,6) ≤ Available(0,4,0,0) ？ 6 > 4, 5 > 0, 6 > 0 ×

  *结论：没有进程能够完成，系统进入不安全状态。*

  *因此，系统不能分配给P2所请求的资源。*]

#answer_block(3, "", breakable: true)[
  *LRU页面替换算法分析*

  给定页面访问序列：0, 1, 4, 2, 0, 2, 6, 5, 1, 2, 3, 2, 1, 2, 6, 2

  物理块数：3块

  LRU（Least Recently Used）算法：当需要替换页面时，选择最近最久未使用的页面进行替换。

  *详细执行过程：*

  #table(
    columns: 6,
    align: center,
    stroke: 0.5pt,
    [*访问页面*], [*物理块1*], [*物理块2*], [*物理块3*], [*是否缺页*], [*说明*],
    [0], [0], [-], [-], [✓], [首次访问，缺页],
    [1], [0], [1], [-], [✓], [新页面，缺页],
    [4], [0], [1], [4], [✓], [新页面，缺页],
    [2], [2], [1], [4], [✓], [替换最久未用的0],
    [0], [2], [0], [4], [✓], [替换最久未用的1],
    [2], [2], [0], [4], [×], [页面2已在内存],
    [6], [2], [0], [6], [✓], [替换最久未用的4],
    [5], [5], [0], [6], [✓], [替换最久未用的2],
    [1], [5], [1], [6], [✓], [替换最久未用的0],
    [2], [5], [1], [2], [✓], [替换最久未用的6],
    [3], [3], [1], [2], [✓], [替换最久未用的5],
    [2], [3], [1], [2], [×], [页面2已在内存],
    [1], [3], [1], [2], [×], [页面1已在内存],
    [2], [3], [1], [2], [×], [页面2已在内存],
    [6], [3], [6], [2], [✓], [替换最久未用的1],
    [2], [3], [6], [2], [×], [页面2已在内存],
  )


  *总结：*
  - 总访问次数：16次
  - 缺页次数：11次
  - 缺页率：11/16 = 68.75%
  - 命中次数：5次
  - 命中率：5/16 = 31.25%

  *LRU算法特点：*
  1. 基于时间局部性原理：最近使用的页面很可能再次被使用
  2. 需要记录每个页面的使用时间或顺序
  3. 算法开销较大，但置换效果较好
  4. 适合大多数实际应用场景
]
#answer_block(4, "")[
  *SCAN调度*（又称电梯调度）是一种磁盘调度算法，磁头像电梯一样从一端向另一端移动，依次处理所经过的所有请求，抵达边界后再反向扫描。这样能较均衡地减少平均寻道时间与磁头移动距离。

  SCAN 调度过程：

  1. 磁头初始位置在 25，向上扫描。
  2. 先访问高于 25 的磁道：
    - 从 25 → 28（移动 3）
    - 从 28 → 39（移动 11）
    - 从 39 → 62（移动 23）
    - 从 62 → 90（移动 28）
    - 从 90 → 100（移动 10）
    - 从 100 → 130（移动 30）
  3. 已无更高请求后，磁头掉头向下扫描：
    - 从 130 → 18（移动 112）

  总移动距离： 3 + 11 + 23 + 28 + 10 + 30 + 112 = 217
]
#answer_block(5, "")[
  #align(center)[
    #grid(
      columns: 2,
      gutter: 10pt,
      [
        #figure(caption: [最佳适应])[#table(
            columns: 2,
            stroke: 0.5pt,
            align: center,
            [F1(100K)], [2️⃣B 3️⃣$"C"_"Failed"$],
            [#sym.space], [],
            [F2(50K)], [1️⃣A],
          )]
      ],
      [
        #figure(caption: [最差适应])[#table(
            columns: 2,
            stroke: 0.5pt,
            align: center,
            [F1(100K)], [1️⃣A 2️⃣B ],
            [#sym.space], [],
            [F2(50K)], [3️⃣$C$],
          )]
      ],
    )
  ]



]
#answer_block(
  6,
  "",
  breakable: true,
  [```c
      // 初始化
    sem forks[5] = {1, 1, 1, 1, 1};
    sem room = 4; // 最多允许4位哲学家同时尝试进餐

    philosopher(i):
        while (1) {
            think();
            wait(room);           // 进入房间
            wait(forks[i]);       // 拿左筷子
            wait(forks[(i+1)%5]); // 拿右筷子,forks[(i + 1) % N] 为了让数组索引回0的位置，形成一个环形的就餐结构。
            eat();
            signal(forks[i]);     // 放左筷子
            signal(forks[(i+1)%5]); // 放右筷子
            signal(room);         // 离开房间
        }
    ```
    下面是完整 c 代码,但是不用写这么细
    ```c
    #include <stdio.h>
    #include <pthread.h>
    #include <semaphore.h>
    #include <unistd.h>

    #define N 5  // 哲学家数量

    sem_t forks[N];        // 表示每只筷子的信号量
    sem_t room;            // 控制最多允许进入就餐的哲学家数（限制为 N-1）

    void* philosopher(void* num) {
        int id = *(int*)num;

        while (1) {
            printf("哲学家 %d 正在思考\n", id);
            sleep(1); // 模拟思考

            sem_wait(&room);              // 进入房间限制（最多N-1人）
            sem_wait(&forks[id]);         // 拿起左边的筷子
            sem_wait(&forks[(id + 1) % N]); // 拿起右边的筷子

            printf("哲学家 %d 正在吃饭\n", id);
            sleep(1); // 模拟吃饭

            sem_post(&forks[id]);         // 放下左边的筷子
            sem_post(&forks[(id + 1) % N]); // 放下右边的筷子
            sem_post(&room);              // 离开房间

            printf("哲学家 %d 吃完了，开始思考\n", id);
        }

        return NULL;
    }

    int main() {
        pthread_t tid[N];
        int ids[N];

        sem_init(&room, 0, N - 1); // 最多允许N-1个哲学家尝试吃饭
        for (int i = 0; i < N; i++) {
            sem_init(&forks[i], 0, 1);
            ids[i] = i;
            pthread_create(&tid[i], NULL, philosopher, &ids[i]);
        }

        for (int i = 0; i < N; i++) {
            pthread_join(tid[i], NULL);
        }

        return 0;
    }
    ```

  ],
)
