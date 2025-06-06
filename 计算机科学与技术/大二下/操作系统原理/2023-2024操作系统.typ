#set heading(numbering: "一、")
#set page(numbering: "1/1")
#set text(font: "pingfang sc", lang: "zh")
#import "@preview/cetz-plot:0.1.1": *
#import "@preview/cetz:0.3.4": *
//选择题要用的横线
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
#align(center, text(15pt)[#text(font: "Songti SC")[$2023-2024$ 年河南工业大学期末考试]]) // Modified title based on OCR
#align(center)[#text(size: 1.8em, font: "Heiti SC")[操作系统]] // Modified subject
#text(font: "Heiti SC")[注意事项]：
#set enum(indent: 0.5cm, numbering: "1.")
+ 答卷前，考生务必将自己的姓名和准考证号填写在答题卡上。
+ 回答选择题时，选出每小题答案后，用铅笔把答题卡对应题目的答案标号涂黑。如需改动，用橡皮擦干净后，再选涂其它答案标号。回答非选择题时，将答案写在答题卡上。写在本试卷上无效。
+ 考试结束后，将本试卷和答题卡一并交回。请认真核对监考员在答题卡上所粘贴的条形码上的姓名、准考证号与您本人是否相符。

= 单项选择题(每题1分,共20分)

1. 操作系统的发展过程是 ( )
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 原始操作系统, 管理程序, 操作系统], [B. 原始操作系统, 操作系统, 管理程序],
    [C. 管理程序, 原始操作系统, 操作系统], [D. 管理程序, 操作系统, 原始操作系统],
  )

2. 用户程序中的输入、输出操作实际上是由 ( ) 完成。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 程序设计语言], [B. 操作系统], [C. 编译系统], [D. 标准库程序],
  )

3. 进程调度的对象和任务分别是 ( )。
  #grid(
    columns: 1,
    gutter: 10pt,
    [A. 作业, 从就绪队列中按一定的调度策略选择一个进程占用 CPU],
    [B. 进程, 从后备作业队列中按调度策略选择一个作业占用 CPU],
    [C. 进程, 从就绪队列中按一定的调度策略选择一个进程占用 CPU],
    [D. 作业, 从后备作业队列中调度策略选择一个作业占用 CPU],
  )

4. 支持程序浮动的地址转换机制是 ( )
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 动态重定位], [B. 段式地址转换], [C. 页式地址转换], [D. 静态重定位],
  )

5. 在可变分区存储管理中, 最优适应分配算法要求对空闲区表项按 ( )进行排列。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 地址从大到小], [B. 地址从小到大], [C. 尺寸从小到大], [D. 尺寸从大到小],
  )

6. 设计批处理多道系统时, 首先要考虑的是 ( )。
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 灵活性和可适应性], [B. 系统效率和吞吐量],
    [C. 交互性和响应时间], [D. 实时性和可靠性],
  )

7. 当进程因时间片用完而让出处理机时, 该进程应转变为 ( )状态。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 等待], [B. 就绪], [C. 运行], [D. 完成],
  )

8. 文件的保密是指防止文件被 ( )。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 篡改], [B. 破坏], [C. 窃取], [D. 删除],
  )

9. 若系统中有五个并发进程涉及某个相同的变量A, 则变量A的相关临界区是由 ( )临界区构成。
  #grid(
    columns: 4,
    gutter: 1fr,
    [A. 2个], [B. 3个], [C. 4个], [D. 5个],
  )

10. 按逻辑结构划分, 文件主要有两类: #uline() 和流式文件。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 记录式文件], [B. 网状文件], [C. 索引文件], [D. 流式文件],
  )

11. UNIX 中的文件系统采用 ( )。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 网状文件], [B. 记录式文件], [C. 索引文件], [D. 流式文件],
  )

12. 文件系统的主要目的是 ( )。
  #grid(
    columns: 2,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 实现对文件的按名存取], [B. 实现虚拟存贮器],
    [C. 提高外围设备的输入输出速度], [D. 用于存贮系统文档],
  )

13. 文件系统中用 ( ) 管理文件。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 堆栈结构], [B. 指针], [C. 页表], [D. 目录],
  )

14. 为了允许不同用户的文件具有相同的 文件名, 通常在文件系统中采用 ( )。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 重名翻译], [B. 多级目录], [C. 约定], [D. 文件名],
  )

15. 在多进程的并发系统中, 肯定不会因竞争 ( ) 而产生死锁。
  #grid(
    columns: 4, // Adjusted for readability
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 打印机], [B. 磁带机],
    [C. CPU], [D. 存储器], // Assuming D was meant to be generic, using OCR text. Or perhaps something else was cut.
  )

16. 一种既有利于短小作业又兼顾到长作业的作业调度算法是 ( )。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 先来先服务], [B. 轮转],
    [C. 最高响应比优先], [D. 均衡调度], // Assuming D based on common algorithms, OCR is "均衡调度"
  )

17. 两个进程合作完成一个任务。在并发执行中, 一个进程要等待其合作伙伴发来消息, 或者建立某个条件后再向后执行, 这种制约性合作关系被称为进程的 ( )。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 互斥], [B. 同步],
    [C. 通信], [D. 伙伴], // OCR is "伙伴"
  )

18. 当每类资源只有一个个体时, 下列说法中不正确的是 ( )。
  #grid(
    columns: 4, // Options are longer
    gutter: 10pt,
    column-gutter: 1fr,

    [A. 有环必死锁],
    [B. 死锁必有环],
    [C. 有环不一定死锁],
    [D. 被锁者一定在环中]
  )

19. 数据文件存放在到存储介质上时, 采用的逻辑组织形式与 ( ) 有关的。
  #grid(
    columns: 4,
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 文件逻辑结构], [B. 存储介质特性], [C. 主存储器管理方式], [D. 分配外设方式],
  )

20. 在单处理器的多进程系统中, 进程什么时候占用处理器和能占用多长时间, 取决于 ( )。
  #grid(
    columns: 2, // Options are longer
    gutter: 10pt,
    column-gutter: 1fr,
    [A. 进程相应的程序段的长度],
    [B. 进程自身和进程调度策略],
    [C. 进程总共需要运行时间多少],
    [D. 进程完成什么功能],
  )

= 填空题(每空2分,共20分)

1. 若信号量 $S$ 的初值定义为10, 则在 $S$ 上调用了16次 $P$ 操作和15次 $V$ 操作后 $S$ 的值应该为 #uline()。
2. 进程调度的方式通常有 #uline() 和 #uline() 两种方式。
3. 每个索引文件都必须有一张 #uline() 表, 其中的地址登记项用来指出文件在外存上的位置信息。
4. 在一请求分页系统中, 假如一个作业的页面走向为:4、3、2、1、4、3、5、4、3、2、1、5、当分配给该作业的物理块数为4时(开始时没有装入页面), 采用LRU 页面淘汰算法将产生 #uline() 次缺页中断。
5. 信号量被广泛用于三个目的是 #uline() 、 #uline() 和描述前趋关系。
6. 程序并发执行时的特征是 #uline() 、 #uline() 、 #uline() 和独立性。

= 判断题(每题1分,共10分)
1. 文件系统中分配存储空间的基本单位不是记录。 #h(1fr) 【 】
2. 具有多道功能的操作系统一定是多用户操作系统。 #h(1fr) 【 】
3. 虚拟存储器是由操作系统提供的一个假想的特大存储器, 它并不是实际的内存, 其大小可比内存空间大得多。 #h(1fr) 【 】
4. 批处理系统的(主要优点)是系统的吞吐量大、资源利用率高、系统的开销较小。 #h(1fr) 【 】
5. 文件系统中源程序是有结构的记录式文件。 #h(1fr) 【 】
6. 即使在多道程序环境下, 普通用户也能设计用内存物理地址直接访问内存的程序。 #h(1fr) 【 】
7. 顺序文件适合建立在顺序存储设备上, 而不适合建立在磁盘上。 #h(1fr) 【 】
8. SPOOLing 系统实现设备管理的虚拟技术, 即:将独占设备改造为共享设备。它由专门负责I/O的常驻内存进程以及输入、输出井组成。 #h(1fr) 【 】
9. 系统调用是操作系统与外界程序之间的接口, 它属于核心程序。在层次结构设计中, 它最靠近硬件。 #h(1fr) 【 】
10. 若系统中存在一个循环等待的进程集合, 则必定会死锁。 #h(1fr) 【 】

= 程序与算法(共10分)

设有一缓冲池 $P$, $P$ 中含有20个可用缓冲区, 一个输入进程将外部数据读入 $P$, 另一个输出进程将 $P$ 中数据取出并输出。若进程每次操作均以一个缓冲区为单位, 试用记录型信号量写出两个进程的同步算法, 要求写出信号量的初值。

#v(7cm)
= 问答题(共16分)

某系统有A、B、C、D四类 资源可供五个进程 $P_1, P_2, P_3, P_4, P_5$ 共享。系统对这四类资源的拥有量为:A类3个、B类14个、C类12个、D类12个。进程对资源的需求和分配情况如下:

#figure(
  table(
    columns: (1fr, 2fr, 2fr),
    stroke: 0.5pt,
    align: center,
    table.header(
      [*进程*],
      [*已占有资源*\ (A, B, C, D)],
      [*最大需求数*\ (A, B, C, D)],
    ),

    [$P_1$], [(0, 0, 1, 2)], [(0, 0, 1, 2)],
    [$P_2$], [(1, 0, 0, 0)], [(1, 7, 5, 0)],
    [$P_3$], [(1, 3, 5, 4)], [(2, 3, 5, 6)],
    [$P_4$], [(0, 6, 3, 2)], [(0, 6, 5, 2)],
    [$P_5$], [(0, 0, 1, 4)], [(0, 6, 5, 6)],
  ),
  caption: [进程资源分配和需求表],
)<银行家算法>

按银行家算法回答下列问题:\
(1) 现在系统中的各类资源还剩余多少?(4分)\
(2) 现在系统是否处于安全状态?为什么?(6分)\
(3) 如果现在进程 $P_2$ 提出需要A类资源0个、B类资源4个、C类资源2个和D类资源0个, 系统能否去满足它的请求?请说明原因。(6分)
#v(6cm)
= 计算题 (第1题6分; 第2题10分, 第3题8分; 共24分)

1. 某一虚拟存储器的用户编程空间共32个页面, 每页为1KB, 内存为16KB。假定某时刻一用户页表中已调入内存的页面的页号和物理块号的对照表如下:
  #align(center)[
    #grid(
      columns: 2,
      gutter: 2em,
      [
        #figure(
          table(
            columns: (auto, auto),
            stroke: 0.5pt,
            align: center,
            [*页号*], [*物理块号*],
            [0], [5],
            [1], [10],
            [2], [4],
            [3], [7],
          ),
          caption: [页表对照表],
        )

      ],
      [#v(0.4cm)
        #figure(
          table(
            columns: (auto, auto, auto),
            stroke: 0.5pt,
            align: center,
            [*作业号*], [*提交时间 (小时)*], [*执行时间 (小时)*],
            [1], [8.5], [2.0],
            [2], [9.2], [1.6],
            [3], [9.4], [0.5],
          ),
          caption: [作业提交与执行时间表],
        )<作业提交与执行时间表>
      ],
    )
  ]
  则逻辑地址 0A5D(H) 所对应的物理地址是什么? (6分)

2. 设有三道作业, 它们的提交时间及执行时间由@作业提交与执行时间表 给出。试计算在单道程序环境下, 采用先来先服务调度算法和最短作业优先调度算法时的平均周转时间(时间单位:小时, 以十进制进行计算;要求写出计算过程)(10分)
  #v(6cm)
3. 假定当前磁头位于100号磁道, 进程对磁道的请求序列依次为55, 58, 39, 18, 90, 160, 150, 38, 180。当采用先来先服务和最短寻道时间优先算法时, 总的移动的磁道数分别是多少? (请给出寻道次序和每步移动磁道数)(8分)

//MARK:An
#pagebreak()
#align(center)[= 参考答案]
#set heading(numbering: "1.", level: 2)
== 选择题
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
#answer_block("1", "C")[
  操作系统的发展历程按时间顺序为：管理程序→原始操作系统→现代操作系统。A项颠倒了管理程序和原始操作系统的顺序；B项完全颠倒了发展顺序；C项正确反映了从管理程序(负责自动化作业输入输出)发展到原始操作系统(具备基本资源管理功能)，再到现代操作系统(功能完善)的历史过程；D项将发展顺序完全倒置。
]

#answer_block("2", "B")[
  用户程序无法直接执行输入输出操作，必须通过操作系统提供的系统调用接口来实现。A项程序设计语言本身不具备直接执行I/O的能力；B项正确，操作系统通过系统调用为用户程序提供I/O服务；C项编译系统只负责源代码到目标代码的翻译工作；D项标准库函数最终也需要调用操作系统的系统调用来完成I/O操作。
]

#answer_block("3", "C")[
  进程调度是CPU调度的核心组成部分，其调度对象和任务需要明确区分。A项将调度对象错误地表述为作业；B项调度对象正确但任务描述属于作业调度范畴；C项正确指出进程调度的对象是进程，任务是从就绪队列中按照特定策略选择进程占用CPU；D项对象和任务都属于作业调度而非进程调度。
]

#answer_block("4", "A")[
  程序浮动是指程序能够在内存的不同物理位置运行的能力。A项动态重定位通过基址寄存器在程序运行时动态地将逻辑地址转换为物理地址，有效支持程序浮动；B项段式地址转换主要解决程序的逻辑分段管理问题；C项页式地址转换主要用于解决内存碎片问题；D项静态重定位在程序加载时就确定了绝对地址，不支持程序浮动。
]

#answer_block("5", "C")[
  不同的内存分配算法对空闲区的组织方式有不同要求。A项和B项按地址排序适用于首次适应分配算法；C项最优适应算法要求按空闲区尺寸从小到大排序，以便优先分配最小的能满足需求的空闲区，从而减少内存碎片；D项按尺寸从大到小排序对应的是最坏适应分配算法。
]

#answer_block("6", "B")[
  不同类型的操作系统有不同的设计目标和考虑重点。A项灵活性和可适应性不是批处理系统的首要考虑因素；B项正确，批处理多道系统主要目标是最大化系统资源利用率，提高系统处理能力和吞吐量；C项交互性和响应时间是分时操作系统的主要特征；D项实时性和可靠性是实时操作系统的核心要求。
]

#answer_block("7", "B")[
  进程状态转换需要根据具体的事件来确定。A项等待状态是指进程因等待I/O操作或其他事件而暂停执行；B项正确，当进程因时间片用完而让出处理机时，该进程仍具备运行条件，应转为就绪状态等待下次调度；C项运行状态表示进程正在占用CPU执行，与让出处理机矛盾；D项完成状态表示进程执行结束，而时间片用完并不意味着进程完成。
]

#answer_block("8", "C")[
  信息安全的三大目标包括保密性、完整性和可用性，各有不同的防护重点。A项篡改威胁的是信息的完整性；B项破坏主要影响系统的可用性；C项正确，文件保密性主要防止未授权用户获取敏感信息，即防止信息泄露；D项删除操作主要威胁系统的可用性。
]

#answer_block("9", "D")[
  临界区的概念与访问共享资源的进程密切相关。当多个进程需要访问同一共享资源时，每个进程中访问该资源的代码段都构成一个临界区。A、B、C项都低估了临界区的数量；D项正确，五个进程都需要访问变量A，因此存在五个相应的临界区，每个进程访问变量A的代码段各自构成一个临界区。
]

#answer_block("10", "A")[
  文件按逻辑结构可分为两大基本类型。A项正确，记录式文件由一系列具有固定结构的记录组成，与流式文件构成文件逻辑结构的两大基本分类；B项网状文件不属于按逻辑结构划分的基本分类；C项索引文件是一种物理组织方式而非逻辑结构分类；D项在题目中已明确提到流式文件，要求找出与之对应的另一类。
]

#answer_block("11", "D")[
  UNIX系统的文件管理理念体现了简洁性原则。A项网状文件不是UNIX支持的文件类型；B项UNIX系统不采用具有固定记录结构的记录式文件；C项索引文件是一种物理组织方式而非文件类型概念；D项正确，UNIX将所有文件统一视为无特定内部结构的字节流，应用程序可以根据需要自行解释文件内容。
]

#answer_block("12", "A")[
  文件系统作为操作系统的重要组成部分，具有明确的设计目标。A项正确，文件系统的核心目的是为用户提供按文件名访问文件的能力，屏蔽底层物理存储的复杂性；B项虚拟存储器属于内存管理子系统的功能；C项提高外设I/O速度属于设备管理子系统的职责；D项存储系统文档只是文件系统的一个具体应用而非主要目的。
]

#answer_block("13", "D")[
  文件系统需要有效的管理机制来组织和维护文件。A项堆栈结构不适合用于文件管理；B项指针只是实现文件管理的技术手段之一，不是管理机制本身；C项页表是内存管理中地址转换的数据结构；D项正确，目录是文件系统的核心管理机制，负责维护文件名与其物理存储位置之间的映射关系。
]

#answer_block("14", "B")[
  文件系统需要解决不同用户使用相同文件名的冲突问题。A项重名翻译不是文件系统的标准解决方案；B项正确，多级目录结构为不同路径下的文件提供了独立的命名空间，允许不同目录中存在同名文件；C项仅靠约定无法从根本上解决重名冲突问题；D项选项表述不完整，无法构成有效答案。
]

#answer_block("15", "C")[
  死锁的产生与资源的特性密切相关，特别是资源的可抢占性。A项打印机是典型的独占且不可抢占资源，多进程竞争时可能产生死锁；B项磁带机同样是独占不可抢占资源；C项正确，CPU是可抢占资源，操作系统调度程序可以强制收回CPU并分配给其他进程，因此不会因竞争CPU而产生死锁；D项存储器在某些情况下的竞争也可能导致死锁现象。
]

#answer_block("16", "C")[
  作业调度算法需要在不同类型作业之间进行权衡。A项先来先服务算法对长作业有利但会使短作业等待时间过长；B项轮转调度主要用于进程调度而非作业调度；C项正确，最高响应比优先算法的响应比计算公式为(等待时间+服务时间)/服务时间，既考虑了作业的服务时间长短，又考虑了等待时间，能够兼顾短作业和长作业；D项均衡调度不是标准的作业调度算法。
]

#answer_block("17", "B", breakable: true)[
  进程间的协作关系有多种形式，需要准确理解其含义。A项互斥是指多个进程不能同时访问共享资源的限制关系；B项正确，同步是指多个进程为完成共同任务而在执行时序上的协调关系，确保进程按照正确的顺序执行；C项通信主要指进程间的数据交换，不涉及执行顺序的协调；D项伙伴不是进程协作关系的标准术语。
  #figure(
    canvas({
      import draw: *

      // 设置画布
      set-style(
        mark: (fill: black, stroke: black),
        stroke: (thickness: 1.5pt),
        content: (padding: 0.2),
      )

      // 绘制进程1的生命线
      line((0, 0), (0, -8), stroke: (thickness: 2pt, paint: blue))
      content((0, 0.5), [进程 1], anchor: "center", frame: "rect", fill: rgb("#e6f3ff"), stroke: blue, padding: 0.3)

      // 绘制进程2的生命线
      line((6, 0), (6, -8), stroke: (thickness: 2pt, paint: red))
      content((6, 0.5), [进程 2], anchor: "center", frame: "rect", fill: rgb("#ffe6e6"), stroke: red, padding: 0.3)

      // 进程1执行阶段
      rect((0.2, -0.5), (0.8, -1.5), fill: rgb("#cce6ff"), stroke: blue)
      content((0.5, -1), [执行任务A], anchor: "center", text: (size: 8pt))

      // 进程2执行阶段
      rect((5.2, -0.5), (5.8, -2), fill: rgb("#ffcccc"), stroke: red)
      content((5.5, -1.25), [执行任务B], anchor: "center", text: (size: 8pt))

      // 消息1: 进程1发送消息给进程2
      line((0.8, -1.8), (5.2, -2.2), mark: (end: ">"))
      content((3, -1.7), [发送消息], anchor: "center", frame: "rect", fill: white, stroke: gray, padding: 0.2)

      // 进程1等待状态
      rect((-0.3, -1.8), (0.3, -4), fill: rgb("#fff2cc"), stroke: orange)
      content((0, -2.9), [等待响应], anchor: "center", text: (size: 8pt), angle: 90deg)

      // 进程2处理消息
      rect((5.2, -2.5), (5.8, -3.5), fill: rgb("#ffcccc"), stroke: red)
      content((5.5, -3), [处理消息], anchor: "center", text: (size: 8pt))

      // 消息2: 进程2发送响应给进程1
      line((5.2, -3.8), (0.8, -4.2), mark: (end: ">"))
      content((3, -3.7), [发送响应], anchor: "center", frame: "rect", fill: white, stroke: gray, padding: 0.2)

      // 进程1收到响应后继续执行
      rect((0.2, -4.5), (0.8, -5.5), fill: rgb("#cce6ff"), stroke: blue)
      content((0.5, -5), [继续执行], anchor: "center", text: (size: 8pt))

      // 进程2等待条件
      rect((5.2, -4), (5.8, -5.5), fill: rgb("#fff2cc"), stroke: orange)
      content((5.5, -4.75), [等待条件], anchor: "center", text: (size: 8pt))

      // 条件建立信号
      line((0.8, -5.8), (5.2, -5.8), mark: (end: ">"))
      content((3, -5.5), [条件满足信号], anchor: "center", frame: "rect", fill: white, stroke: gray, padding: 0.2)

      // 两个进程同时执行最终任务
      rect((0.2, -6.2), (0.8, -7.2), fill: rgb("#ccffcc"), stroke: green)
      content((0.5, -6.7), [最终任务], anchor: "center", text: (size: 8pt))

      rect((5.2, -6.2), (5.8, -7.2), fill: rgb("#ccffcc"), stroke: green)
      content((5.5, -6.7), [最终任务], anchor: "center", text: (size: 8pt))

      // 添加时间轴
      for i in range(9) {
        let y = -i
        line((-1, y), (-0.8, y), stroke: gray)
        content((-1.2, y), [#(i)], anchor: "east", text: (size: 8pt))
      }
      content((-1.2, 0.5), [时间], anchor: "center", text: (size: 9pt, weight: "bold"))

      // 添加图例
      content((3, -8.5), [图例:], anchor: "center", text: (weight: "bold"))

      // 图例项
      rect((0.5, -9), (1, -9.3), fill: rgb("#cce6ff"), stroke: blue)
      content((1.2, -9.15), [执行状态], anchor: "west", text: (size: 8pt))

      rect((2.5, -9), (3, -9.3), fill: rgb("#fff2cc"), stroke: orange)
      content((3.2, -9.15), [等待状态], anchor: "west", text: (size: 8pt))

      rect((4.5, -9), (5, -9.3), fill: rgb("#ccffcc"), stroke: green)
      content((5.2, -9.15), [合作执行], anchor: "west", text: (size: 8pt))
    }),
    caption: [两个进程合作完成任务的并发执行时序图],
  )

  #v(1em)

  *说明：*
  - 蓝色和红色生命线分别代表进程1和进程2的执行时间线
  - 橙色区域表示进程处于等待状态
  - 绿色区域表示两个进程协同执行最终任务
  - 箭头表示进程间的消息传递和同步信号
  - 进程需要相互等待和协调才能完成整个任务
]

#answer_block("18", "C", breakable: true)[
  资源分配图中环的存在与死锁的关系需要结合资源数量来分析。A项正确，当每类资源只有一个实例时，有环必然导致死锁；B项正确，在单资源情况下死锁必然形成等待环；C项错误，当每类资源只有一个实例时，资源分配图中有环就一定会产生死锁，因为环中每个进程都在等待环中下一个进程所拥有的唯一资源；D项正确，发生死锁的进程必然位于等待环中。

  (下图可能不太容易看清楚, 但是好好看还是可以看清的🥹🤓, 使用 Typst cetz 制作, who can make it better can send to my mail address: haut.cn\@icloud.com)
  #figure(
    canvas({
      import draw: *

      set-style(
        mark: (fill: black, stroke: black),
        stroke: (thickness: 1.5pt),
        content: (padding: 0.2),
      )

      // 标题
      content((5, 8.5), [每类资源只有一个个体时：有环必死锁], anchor: "center", text: (size: 14pt, weight: "bold"))

      // 示例1: 简单的环路死锁
      content((2.5, 7.5), [示例1：两进程形成环路], anchor: "center", text: (size: 12pt, weight: "bold", fill: red))

      // 进程P1
      circle((1, 6), radius: 0.4, fill: rgb("#ffe6e6"), stroke: red)
      content((1, 6), [P1], anchor: "center", text: (weight: "bold"))

      // 进程P2
      circle((4, 6), radius: 0.4, fill: rgb("#ffe6e6"), stroke: red)
      content((4, 6), [P2], anchor: "center", text: (weight: "bold"))

      // 资源R1 (只有一个个体)
      rect((1.6, 4.6), (2.4, 5.4), fill: rgb("#fff2e6"), stroke: orange)
      content((2, 5), [R1], anchor: "center", text: (weight: "bold"))
      circle((2, 5), radius: 0.08, fill: orange) // 唯一个体

      // 资源R2 (只有一个个体)
      rect((2.6, 4.6), (3.4, 5.4), fill: rgb("#fff2e6"), stroke: orange)
      content((3, 5), [R2], anchor: "center", text: (weight: "bold"))
      circle((3, 5), radius: 0.08, fill: orange) // 唯一个体

      // P1持有R1 - 从R1左上角到P1左下角
      line((1.8, 5.3), (1.2, 5.7), mark: (end: ">"), stroke: (paint: green, thickness: 2pt))
      content((1.1, 6.05), [持有], anchor: "south", text: (size: 7pt, fill: green)) // 调整：更靠近P1上方

      // P2持有R2 - 从R2右上角到P2右下角
      line((3.2, 5.3), (3.8, 5.7), mark: (end: ">"), stroke: (paint: green, thickness: 2pt))
      content((3.9, 6.05), [持有], anchor: "south", text: (size: 7pt, fill: green)) // 调整：更靠近P2上方

      // P1请求R2 - 从P1右下角到R2左下角
      line((1.4, 5.7), (2.6, 4.7), mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 2pt))
      content((2.2, 4.9), [请求], anchor: "south", text: (size: 7pt, fill: red)) // 调整：更靠近R2左下方

      // P2请求R1 - 从P2左下角到R1右下角
      line((3.6, 5.7), (2.4, 4.7), mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 2pt))
      content((2.8, 4.9), [请求], anchor: "south", text: (size: 7pt, fill: red)) // 调整：更靠近R1右下方

      // 环路标识
      content(
        (2.5, 4.2),
        [环路→必然死锁],
        anchor: "center",
        frame: "rect",
        fill: rgb("#ffcccc"),
        stroke: red,
        text: (size: 9pt, weight: "bold"),
      )

      // 分隔线
      line((0, 3.5), (10, 3.5), stroke: gray)

      // 示例2: 三进程环路死锁
      content((2.5, 3), [示例2：三进程形成环路], anchor: "center", text: (size: 12pt, weight: "bold", fill: red))

      // 三个进程，形成等边三角形布局
      circle((2.5, 2), radius: 0.35, fill: rgb("#ffe6e6"), stroke: red) //P3
      content((2.5, 2), [P3], anchor: "center", text: (size: 9pt, weight: "bold"))

      circle((1.2, 0.5), radius: 0.35, fill: rgb("#ffe6e6"), stroke: red) //P4
      content((1.2, 0.5), [P4], anchor: "center", text: (size: 9pt, weight: "bold"))

      circle((3.8, 0.5), radius: 0.35, fill: rgb("#ffe6e6"), stroke: red) //P5
      content((3.8, 0.5), [P5], anchor: "center", text: (size: 9pt, weight: "bold"))

      // 三个资源，放在三角形的边上
      rect((1.6, 1.4), (2.2, 2), fill: rgb("#fff2e6"), stroke: orange) //R3
      content((1.9, 1.7), [R3], anchor: "center", text: (size: 9pt, weight: "bold"))
      circle((1.9, 1.7), radius: 0.06, fill: orange)

      rect((2.8, 1.4), (3.4, 2), fill: rgb("#fff2e6"), stroke: orange) //R4
      content((3.1, 1.7), [R4], anchor: "center", text: (size: 9pt, weight: "bold"))
      circle((3.1, 1.7), radius: 0.06, fill: orange)

      rect((2.2, -0.2), (2.8, 0.4), fill: rgb("#fff2e6"), stroke: orange) //R5
      content((2.5, 0.1), [R5], anchor: "center", text: (size: 9pt, weight: "bold"))
      circle((2.5, 0.1), radius: 0.06, fill: orange)

      // 分配关系 (绿色实线) - 从资源指向拥有它的进程
      // P3持有R3: R3(1.9,1.7) -> P3(2.5,2)
      line((2.0, 1.8), (2.4, 1.95), mark: (end: ">"), stroke: (paint: green, thickness: 1.5pt))
      content((1.8, 2.25), [P3持有R3], anchor: "center", text: (size: 6pt, fill: green)) // 大幅调整

      // P4持有R4: R4(3.1,1.7) -> P4(1.2,0.5)
      line((2.9, 1.55), (1.5, 0.65), mark: (end: ">"), stroke: (paint: green, thickness: 1.5pt))
      content((2.3, 0.9), [P4持有R4], anchor: "center", text: (size: 6pt, fill: green)) // 大幅调整

      // P5持有R5: R5(2.5,0.1) -> P5(3.8,0.5)
      line((2.75, 0.15), (3.5, 0.4), mark: (end: ">"), stroke: (paint: green, thickness: 1.5pt))
      content((3.3, 0.0), [P5持有R5], anchor: "center", text: (size: 6pt, fill: green)) // 大幅调整

      // 请求关系 (红色虚线) - 从进程指向它请求的资源
      // P3(2.5,2) -> R4(3.1,1.7)
      line((2.6, 1.85), (3.0, 1.75), mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 1.5pt))
      content((2.9, 2.15), [P3请求R4], anchor: "center", text: (size: 6pt, fill: red)) // 大幅调整

      // P4(1.2,0.5) -> R5(2.5,0.1)
      line((1.4, 0.35), (2.2, 0.15), mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 1.5pt))
      content((1.5, -0.1), [P4请求R5], anchor: "center", text: (size: 6pt, fill: red)) // 大幅调整

      // P5(3.8,0.5) -> R3(1.9,1.7)
      line((3.6, 0.7), (2.2, 1.5), mark: (end: ">"), stroke: (paint: red, dash: "dashed", thickness: 1.5pt))
      content((3.1, 1.1), [P5请求R3], anchor: "center", text: (size: 6pt, fill: red)) // 大幅调整

      // 环路标识
      content(
        (2.5, -0.8),
        [三角环路：P3→R4→P4→R5→P5→R3→P3],
        anchor: "center",
        frame: "rect",
        fill: rgb("#ffcccc"),
        stroke: red,
        text: (size: 8pt, weight: "bold"),
      )

      // 右侧说明
      content(
        (6, 6.5),
        [关键条件：每类资源只有一个个体],
        anchor: "west",
        text: (size: 11pt, weight: "bold", fill: blue),
      )

      content((6, 6), [分析示例1：], anchor: "west", text: (size: 10pt, weight: "bold"))
      content((6, 5.6), [• P1持有R1（唯一），请求R2], anchor: "west", text: (size: 9pt))
      content((6, 5.2), [• P2持有R2（唯一），请求R1], anchor: "west", text: (size: 9pt))
      content((6, 4.8), [• 互相等待 → 死锁], anchor: "west", text: (size: 9pt, fill: red, weight: "bold"))

      content((6, 4.2), [为什么有环必死锁？], anchor: "west", text: (size: 10pt, weight: "bold", fill: purple))
      content((6, 3.8), [每类资源只有一个个体，环中], anchor: "west", text: (size: 9pt))
      content((6, 3.4), [每个进程等待的资源都被其他], anchor: "west", text: (size: 9pt))
      content((6, 3), [进程唯一占用，无法获得], anchor: "west", text: (size: 9pt))

      content((6, 2.4), [示例2说明：], anchor: "west", text: (size: 10pt, weight: "bold"))
      content((6, 2), [即使是多进程复杂环路，], anchor: "west", text: (size: 9pt))
      content((6, 1.6), [只要每类资源唯一，], anchor: "west", text: (size: 9pt))
      content((6, 1.2), [有环就必然死锁], anchor: "west", text: (size: 9pt, fill: red))

      content((6, 0.6), [环路路径：], anchor: "west", text: (size: 9pt, weight: "bold"))
      content((6, 0.2), [P3→R4→P4→R5→P5→R3→P3], anchor: "west", text: (size: 9pt, fill: red))


      // 图例
      content((0.65, -3.8), [图例：], anchor: "west", text: (size: 10pt, weight: "bold"))

      circle((2, -3.8), radius: 0.25, fill: rgb("#ffe6e6"), stroke: red)
      content((2, -3.8), [P], anchor: "center", text: (size: 7pt))
      content((2.5, -3.8), [进程], anchor: "west", text: (size: 8pt))

      rect((3.7, -4.05), (4.3, -3.55), fill: rgb("#fff2e6"), stroke: orange)
      content((4, -3.8), [R], anchor: "center", text: (size: 7pt))
      content((4.5, -3.8), [资源], anchor: "west", text: (size: 8pt))

      line((5.5, -3.8), (6.5, -3.8), mark: (end: ">"), stroke: green)
      content((7, -3.8), [分配], anchor: "west", text: (size: 8pt))

      line((5.5, -4.2), (6.5, -4.2), mark: (end: ">"), stroke: (paint: red, dash: "dashed"))
      content((7, -4.2), [请求], anchor: "west", text: (size: 8pt))
    }),
    caption: [每类资源只有一个个体时的死锁分析],
  )
]

#answer_block("19", "A")[
  文件在存储介质上的组织形式受多种因素影响。A项正确，文件的逻辑结构决定了数据的组织方式和访问模式，直接影响其在存储介质上的存放形式；B项存储介质的物理特性主要影响文件的物理存储方式而非逻辑组织形式；C项主存储器管理方式与文件的逻辑组织形式没有直接关系；D项外设分配方式同样与文件逻辑结构无关。
]

#answer_block("20", "B")[
  进程调度的时机和持续时间由多种因素共同决定。A项程序段长度不是决定进程调度时机和时长的主要因素；B项正确，进程何时占用处理器以及占用多长时间，主要取决于进程自身的属性(如优先级、状态等)和系统采用的进程调度策略；C项进程的总运行时间不直接决定其被调度的时机；D项进程的功能特性不影响调度决策的制定。
]

== 填空题答案与解析

#answer_block("1", "9")[
  信号量的值变化规律：初值为10，P操作使信号量减1，V操作使信号量加1。经过16次P操作和15次V操作后，信号量值为：10 - 16 + 15 = 9。负值表示有1个进程在等待队列中被阻塞。
]

#answer_block("2", "抢占式调度，非抢占式调度")[
  进程调度根据是否允许强制收回正在运行进程的CPU分为两种方式：抢占式调度（可以强制收回CPU）和非抢占式调度（不能强制收回CPU，必须等待进程主动释放）。
]
#figure(
  canvas({
    import draw: *


    // 抢占式调度示例
    content((0, 7), [*抢占式调度 *], anchor: "west")

    // 时间轴
    line((0, 6), (10, 6), stroke: 1pt)
    for i in range(6) {
      line((i * 2, 5.8), (i * 2, 6.2), stroke: 0.5pt)
      content((i * 2, 5.5), [#(i * 2)], anchor: "center")
    }

    // 抢占式调度的进程块
    rect((0, 6.2), (2, 6.8), fill: rgb("#FF6B6B"), stroke: none)
    content((1, 6.5), text(fill: white, weight: "bold")[P1], anchor: "center")

    rect((2, 6.2), (4, 6.8), fill: rgb("#4ECDC4"), stroke: none)
    content((3, 6.5), text(fill: white, weight: "bold")[P2], anchor: "center")

    rect((4, 6.2), (6, 6.8), fill: rgb("#FF6B6B"), stroke: none)
    content((5, 6.5), text(fill: white, weight: "bold")[P1], anchor: "center")

    rect((6, 6.2), (8, 6.8), fill: rgb("#45B7D1"), stroke: none)
    content((7, 6.5), text(fill: white, weight: "bold")[P3], anchor: "center")

    rect((8, 6.2), (10, 6.8), fill: rgb("#4ECDC4"), stroke: none)
    content((9, 6.5), text(fill: white, weight: "bold")[P2], anchor: "center")

    // 抢占标记
    for x in (2, 4, 6, 8) {
      line((x, 6.8), (x, 7.2), stroke: (paint: red, dash: "dashed"))
      content((x, 7.3), text(size: 8pt, fill: red)[抢占], anchor: "center")
    }

    // 非抢占式调度示例
    content((0, 4), [*非抢占式调度 (Non-preemptive Scheduling)*], anchor: "west")

    // 时间轴
    line((0, 3), (10, 3), stroke: 1pt)
    for i in range(6) {
      line((i * 2, 2.8), (i * 2, 3.2), stroke: 0.5pt)
      content((i * 2, 2.5), [#(i * 2)], anchor: "center")
    }

    // 非抢占式调度的进程块
    rect((0, 3.2), (4, 3.8), fill: rgb("#FF6B6B"), stroke: none)
    content((2, 3.5), text(fill: white, weight: "bold")[P1], anchor: "center")

    rect((4, 3.2), (7, 3.8), fill: rgb("#4ECDC4"), stroke: none)
    content((5.5, 3.5), text(fill: white, weight: "bold")[P2], anchor: "center")

    rect((7, 3.2), (10, 3.8), fill: rgb("#45B7D1"), stroke: none)
    content((8.5, 3.5), text(fill: white, weight: "bold")[P3], anchor: "center")

    // 特点对比表格
    content((0, 1.5), text(weight: "bold")[*特点对比*], anchor: "west")

    // 表格线
    line((0, 1), (10, 1), stroke: 1pt)
    line((0, 0.5), (10, 0.5), stroke: 1pt)
    line((0, 0), (10, 0), stroke: 1pt)
    line((0, -0.5), (10, -0.5), stroke: 1pt)

    line((0, 1), (0, -0.5), stroke: 1pt)
    line((3, 1), (3, -0.5), stroke: 1pt)
    line((6.5, 1), (6.5, -0.5), stroke: 1pt)
    line((10, 1), (10, -0.5), stroke: 1pt)

    // 表格内容
    content((1.5, 0.75), text(weight: "bold")[调度方式], anchor: "center")
    content((4.75, 0.75), text(weight: "bold")[抢占式], anchor: "center")
    content((8.25, 0.75), text(weight: "bold")[非抢占式], anchor: "center")

    content((1.5, 0.25), [响应时间], anchor: "center")
    content((4.75, 0.25), text(fill: green)[快], anchor: "center")
    content((8.25, 0.25), text(fill: red)[慢], anchor: "center")

    content((1.5, -0.25), [系统开销], anchor: "center")
    content((4.75, -0.25), text(fill: red)[大], anchor: "center")
    content((8.25, -0.25), text(fill: green)[小], anchor: "center")

    // 图例
    content((0, -1.2), text(weight: "bold")[*图例：*], anchor: "west")
    rect((1.5, -1.4), (2, -1.1), fill: rgb("#FF6B6B"), stroke: none)
    content((2.2, -1.25), [进程P1], anchor: "west")

    rect((3.5, -1.4), (4, -1.1), fill: rgb("#4ECDC4"), stroke: none)
    content((4.2, -1.25), [进程P2], anchor: "west")

    rect((5.5, -1.4), (6, -1.1), fill: rgb("#45B7D1"), stroke: none)
    content((6.2, -1.25), [进程P3], anchor: "west")
  }),
  caption: [抢占式调度与非抢占式调度示例],
)

#answer_block("3", "索引")[
  索引文件是一种重要的文件组织方式，每个索引文件都有一张索引表，表中的地址登记项记录了文件各部分在外存设备上的物理位置，通过索引表可以快速定位文件内容。
]

#answer_block("4", "8")[
  使用LRU（最近最少使用，Least Recently Used）

这是一种缓存淘汰策略，当缓存空间不足时，会优先淘汰最长时间没有被访问的数据项。LRU算法基于这样的假设：最近被访问的数据在未来被访问的可能性更大，而长时间未被访问的数据在未来被访问的可能性较小。）算法分析页面访问序列4、3、2、1、4、3、5、4、3、2、1、5：
#table(
  columns: (auto, auto, auto, auto, auto),
  stroke: 0.5pt,
  align: center,
  table.header(
    [*步骤*],
    [*访问页面*],
    [*内存状态*],
    [*是否缺页*],
    [*说明*],
  ),
  [1], [4], [[4]], [是], [首次访问，缺页],
  [2], [3], [[4,3]], [是], [首次访问，缺页],
  [3], [2], [[4,3,2]], [是], [首次访问，缺页],
  [4], [1], [[4,3,2,1]], [是], [首次访问，缺页],
  [5], [4], [[3,2,1,4]], [否], [页面4已在内存，移到最近位置],
  [6], [3], [[2,1,4,3]], [否], [页面3已在内存，移到最近位置],
  [7], [5], [[1,4,3,5]], [是], [页面5不在内存，淘汰最久未用的页面2],
  [8], [4], [[1,3,5,4]], [否], [页面4已在内存，移到最近位置],
  [9], [3], [[1,5,4,3]], [否], [页面3已在内存，移到最近位置],
  [10], [2], [[5,4,3,2]], [是], [页面2不在内存，淘汰最久未用的页面1],
  [11], [1], [[4,3,2,1]], [是], [页面1不在内存，淘汰最久未用的页面5],
  [12], [5], [[3,2,1,5]], [是], [页面5不在内存，淘汰最久未用的页面4],
)
]

#answer_block("5", "互斥，同步")[
  信号量机制的三个主要用途：1）互斥（控制对临界资源的互斥访问）；2）同步（实现进程间的同步协作）；3）描述前趋关系（表示进程执行的先后顺序关系）。
]

#answer_block("6", "间断性，失去封闭性，不可再现性")[
  程序并发执行的特征包括：1）间断性（进程执行过程中可能被中断）；2）失去封闭性（执行结果受其他并发进程影响）；3）不可再现性（每次执行结果可能不同）；4）独立性（每个进程有独立的地址空间）。
]

== 判断题答案与解析

#answer_block("1", "✔")[
  正确。文件系统中分配存储空间的基本单位通常是簇（cluster）或块（block），而不是记录。记录是文件的逻辑单位，而簇/块是物理存储的分配单位。
  #import "@preview/cetz:0.3.4": *
  #import "@preview/cetz-plot:0.1.1": *

  #figure(
    canvas({
      import draw: *

      // 设置画布大小
      set-style(content: (padding: .2))

      // 逻辑层：文件和记录
      content((-6, 7), [*逻辑层*], anchor: "west", fill: blue.lighten(80%))

      // 绘制文件
      rect((-6, 5.5), (-2, 6.5), fill: blue.lighten(60%), stroke: blue)
      content((-4, 6), [*文件A*], anchor: "center")

      // 绘制记录
      for i in range(4) {
        rect((-5.8 + i * 0.9, 4.5), (-5.2 + i * 0.9, 5.3), fill: blue.lighten(90%), stroke: blue)
        content((-5.5 + i * 0.9, 4.9), [记录#{ i + 1 }], anchor: "center", text: (size: 8pt))
      }

      // 物理层：簇/块
      content((-6, 3), [*物理层*], anchor: "west", fill: red.lighten(80%))

      // 绘制磁盘存储区域
      rect((-6, 0.5), (6, 2.5), fill: gray.lighten(80%), stroke: gray)
      content((0, 2.8), [*磁盘存储空间*], anchor: "center")

      // 绘制簇/块
      for i in range(8) {
        let x = -5.5 + i * 1.4
        rect((x, 1), (x + 1.2, 2), fill: red.lighten(60%), stroke: red)
        content((x + 0.6, 1.5), [簇#{ i + 1 }], anchor: "center", text: (size: 8pt))
      }

      // 绘制映射关系箭头
      content((-7, 3.8), [映射关系], anchor: "west", text: (size: 10pt, fill: green))

      // 记录到簇的映射箭头
      line((-5.5, 4.5), (-4.9, 2), stroke: green + 2pt, mark: (end: ">"))
      line((-4.6, 4.5), (-4.9, 2), stroke: green + 2pt, mark: (end: ">"))
      line((-3.7, 4.5), (-3.5, 2), stroke: green + 2pt, mark: (end: ">"))
      line((-2.8, 4.5), (-2.1, 2), stroke: green + 2pt, mark: (end: ">"))

      // 添加分隔线
      line((-7, 3.8), (7, 3.8), stroke: gray + 1pt)
    }),
    caption: [
      文件系统存储分配单位关系示意图
    ],
  )
]

#answer_block("2", "×")[
  错误。多道功能是指系统能够同时处理多个程序，而多用户是指系统能够支持多个用户同时使用。具有多道功能的操作系统不一定是多用户系统，如单用户多任务系统。
]

#answer_block("3", "✔")[
  正确。虚拟存储器是操作系统提供的存储管理技术，通过页面置换等机制，使程序感觉拥有比实际物理内存更大的存储空间，其逻辑容量可以远大于物理内存容量。
]

#answer_block("4", "✔")[
  正确。批处理系统通过批量处理作业，减少了系统开销，提高了CPU和其他资源的利用率，从而实现了较高的系统吞吐量，这些确实是批处理系统的主要优点。
]

#answer_block("5", "×", breakable: true)[
  错误。源程序通常是文本文件，属于流式文件（字符流），而不是记录式文件。记录式文件是由固定格式记录组成的文件，如数据库文件等。

  ```c
  #include <stdio.h>

  int main() {
      printf("Hello, world!\n");
      return 0;
  }
  ```

  #line(length: 100%)

  为什么这是一个"流式文件"？

  #box(
    fill: rgb("#fafffa"),
    inset: 10pt,
    radius: 5pt,
    width: 100%,
    [
      *#text(fill: green)[✓]* 流式文件特征：
    ],
  )

  - 这个源程序是保存在一个 `.c` 文件中的（比如 `hello.c`）。
  - 它是一个普通文本文件，从头到尾顺序读取字符就能还原程序内容。
  - 没有固定记录格式，不像数据库那样有"记录头""字段长度"等结构。
  - 所以它是典型的*流式文件*（character stream）。

  #line(length: 100%)

  对比：什么是记录式文件？

  #box(
    fill: rgb("#ffffff"),
    inset: 10pt,
    radius: 5pt,
    width: 100%,
    [
      *#text(fill: green)[✓]* 记录式文件示例：
    ],
  )

  比如银行系统的交易数据：

  #table(
    columns: 3,
    stroke: 0.5pt,
    table.header(
      [*用户ID*],
      [*日期*],
      [*金额*],
    ),

    [001], [2025-05-23], [100.00],
    [002], [2025-05-23], [200.00],
  )
  - 系统读取时是"按记录"为单位的，而不是一行行字符顺序流动。


]

#answer_block("6", "×")[
  错误。在多道程序环境下，为了保护系统和其他程序的安全，普通用户程序不能直接使用物理地址访问内存，必须通过虚拟地址，由操作系统进行地址转换和保护。
]

#answer_block("7", "×")[
  错误。顺序文件既适合建立在顺序存储设备（如磁带）上，也适合建立在随机存储设备（如磁盘）上。在磁盘上建立顺序文件是很常见的做法。
]

#answer_block("8", "✔")[
  正确。SPOOLing（Simultaneous Peripheral Operations On-Line, 在线同步外围设备操作）系统通过假脱机技术，将独占设备虚拟为共享设备，由专门的I/O进程管理输入输出井，实现设备的虚拟化。
]

#answer_block("9", "×")[
  错误。系统调用虽然属于核心程序，但在操作系统层次结构中，它是应用程序与操作系统内核之间的接口，位于内核之上，而不是最靠近硬件的层次。
]

#answer_block("10", "×")[
  错误。循环等待只是死锁的必要条件之一，不是充分条件。死锁的发生需要同时满足四个条件：互斥、占有并等待、不可抢占、循环等待。仅有循环等待不足以导致死锁。
]


#let answer(num, content) = [
  #block(
    width: 100%,
    fill: rgb("#F8F9FA"),
    inset: 8pt,
    radius: 4pt,
    stroke: 0.5pt + rgb("#DEE2E6"),
  )[
    #if num != "" [
      *#num.*
    ]
    #content
  ]
  #v(6pt)
]

== 程序与算法题

#answer(
  "",
  [
    *生产者-消费者同步算法*

    ```c
    // 信号量定义及初值
    semaphore full = 0;    // 已满缓冲区数量
    semaphore empty = 20;  // 空闲缓冲区数量
    semaphore mutex = 1;   // 互斥信号量

    // 输入进程（生产者）
    void input_process() {
        while(true) {
            produce_data();
            P(empty);              // 申请空闲缓冲区
            P(mutex);              // 申请互斥访问
            put_data_to_buffer();  // 放入数据
            V(mutex);              // 释放互斥访问
            V(full);               // 增加已满缓冲区计数
        }
    }

    // 输出进程（消费者）
    void output_process() {
        while(true) {
            P(full);               // 申请已满缓冲区
            P(mutex);              // 申请互斥访问
            get_data_from_buffer(); // 取出数据
           
            output_data();
        }
    }
    ```

    *关键要点：*
    - `empty = 20`：控制生产者，确保有空闲缓冲区
    - `full = 0`：控制消费者，确保有数据可取
    - `mutex = 1`：保证对缓冲池的互斥访问
    - P/V操作顺序：先资源申请，后互斥申请（避免死锁）
    - 生产者的V(full)会唤醒等待的消费者
    - 消费者的V(empty)会唤醒等待的生产者
  ],
)

== 问答题（银行家算法）

#answer(
  "",
  [
    *(1) 剩余资源计算：*
    - A类：3 - (0+1+1+0+0) = 1
    - B类：14 - (0+0+3+6+0) = 5
    - C类：12 - (1+0+5+3+1) = 2
    - D类：12 - (2+0+4+2+4) = 0

    *Available = (1, 5, 2, 0)*

    *(2) 系统处于安全状态。* 存在安全序列：P₁→P₄→P₂→P₃→P₅

    #table(
      columns: (auto, auto, auto, auto),
      stroke: 0.5pt,
      inset: 6pt,
      align: center,
      [*执行顺序*], [*进程*], [*执行前Available*], [*执行后Available*],
      [1], [P₁], [(1,5,2,0)], [(1,5,3,2)],
      [2], [P₄], [(1,5,3,2)], [(1,11,6,4)],
      [3], [P₂], [(1,11,6,4)], [(2,11,6,4)],
      [4], [P₃], [(2,11,6,4)], [(3,14,11,10)],
      [5], [P₅], [(3,14,11,10)], [(3,14,12,16)],
    )

    *(3) 系统可以满足P₂的请求。*因为分配后可用资源为1, 1, 0, 0，仍然来存在安全序列。


  ],
)

== 计算题

#answer(
  "1",
  [#figure(caption: [页表映射关系图])[
      #canvas(
        length: 1cm,
        {
          import draw: *
          scale(0.8)
          // Apple 配色方案
          let blue = rgb(0, 122, 255)
          let green = rgb(52, 199, 89)
          let orange = rgb(255, 149, 0)
          let red = rgb(255, 59, 48)
          let purple = rgb(175, 82, 222)
          let gray = rgb(142, 142, 147)

          // 绘制虚拟地址空间（用户编程空间）
          rect((-6, 0), (-4, 8), fill: blue.lighten(80%), stroke: blue)
          content((-5, 8.8), [*虚拟地址空间*], size: 12pt)
          content((-5, 8.25), [(32页，每页1KB)], size: 10pt)

          // 绘制虚拟页面 (从下往上：页面0,1,2,3...)
          for i in range(8) {
            rect((-6, i), (-4, i + 1), stroke: blue)
            if i < 4 {
              content((-5, i + 0.5), text(fill: blue)[页面 #str(i)], size: 10pt)
            } else if i == 4 {
              content((-5, i + 0.5), [⋮], size: 12pt)
            } else if i == 7 {
              content((-5, i + 0.5), [页面 31], size: 10pt)
            }
          }

          // 绘制物理内存
          rect((4, 0), (6, 16), fill: green.lighten(80%), stroke: green)
          content((5, 16.8), [*物理内存*], size: 12pt)
          content((5, 16.25), [(16KB = 16块)], size: 10pt)

          // 绘制物理块 (从下往上：块0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
          for i in range(16) {
            rect((4, i), (6, i + 1), stroke: green)
            if i == 4 {
              // 块4 - 被页面2占用
              rect((4, i), (6, i + 1), fill: orange.lighten(60%), stroke: orange)
              content((5, i + 0.5), text(fill: white)[*块4*], size: 9pt)
            } else if i == 5 {
              // 块5 - 被页面0占用
              rect((4, i), (6, i + 1), fill: red.lighten(60%), stroke: red)
              content((5, i + 0.5), text(fill: white)[*块5*], size: 9pt)
            } else if i == 7 {
              // 块7 - 被页面3占用
              rect((4, i), (6, i + 1), fill: blue.lighten(60%), stroke: blue)
              content((5, i + 0.5), text(fill: white)[*块7*], size: 9pt)
            } else if i == 10 {
              // 块10 - 被页面1占用
              rect((4, i), (6, i + 1), fill: purple.lighten(60%), stroke: purple)
              content((5, i + 0.5), text(fill: white)[*块10*], size: 9pt)
            } else {
              content((5, i + 0.5), text(fill: green)[块#str(i)], size: 9pt)
            }
          }

          // 绘制正确的映射箭头
          // 页面0 -> 块5
          line((-4, 0.5), (4, 5.5), stroke: red + 2pt, mark: (end: ">"))
          content(
            (-1, 2.8),
            text(fill: red, size: 10pt)[页0→块5],
            angle: 25deg,
          )

          // 页面1 -> 块10
          line((-4, 1.5), (4, 10.5), stroke: purple + 2pt, mark: (end: ">"))
          content(
            (2, 9),
            text(fill: purple, size: 10pt)[页1→块10],
            angle: 50deg,
          )

          // 页面2 -> 块4
          line((-4, 2.5), (4, 4.5), stroke: orange + 2pt, mark: (end: ">"))
          content(
            (-1, 3.2),
            text(fill: orange, size: 10pt)[页2→块4],
            angle: 10deg,
          )

          // 页面3 -> 块7
          line((-4, 3.5), (4, 7.5), stroke: blue + 2pt, mark: (end: ">"))
          content(
            (-1.2, 5.5),
            text(fill: blue, size: 10pt)[页3→块7],
            angle: 20deg,
          )
        },
      )
    ]

    虚拟存储器管理中，*页（Page）和块（Block/Frame）*是虚拟内存和物理内存的对应单位，它们大小相等.
    *逻辑地址0A5D(H)转换为物理地址：*

    1. 逻辑地址0A5D(H) = 2653(D)[这里是从16进制转为10进制数]
    2. 页面大小 = 1KB = 1024字节
    3. 页号 = 2653 ÷ 1024 = 2
    4. 页内偏移 = 2653 mod 1024 = 605 = 25D(H)
    5. 查页表：页号2对应物理块号4
    6. 物理地址 = 4 × 1024 + 605 = 4701(D) = 125D(H)

    *答案：125D(H)*
    #figure(caption: [过程示意图])[
      #set text(size: 9pt)
      #canvas(
        length: 1cm,
        {
          import draw: *
          scale(0.73)
          let blue = rgb(0, 122, 255)
          let green = rgb(52, 199, 89)
          let orange = rgb(255, 149, 0)

          // 逻辑地址
          rect((-6, 2), (-2, 3), fill: blue.lighten(80%), stroke: blue)
          content((-4, 2.5), [逻辑地址: 0A5D(H)])

          // 分解
          rect((-6, 1), (-2, 2), fill: blue.lighten(90%), stroke: blue)
          content((-4, 1.5), [页号2, 偏移605], size: 10pt)

          // 箭头
          line((-2, 1.5), (0, 1.5), stroke: 2pt, mark: (end: ">"))
          content((-1, 1.8), [页表查找], size: 9pt)

          // 页表映射
          rect((0, 1), (4, 2), fill: orange.lighten(80%), stroke: orange)
          content((2, 1.5), [页2 → 物理块4], size: 10pt)

          // 箭头
          line((4, 1.5), (6, 1.5), stroke: 2pt, mark: (end: ">"))

          // 物理地址
          rect((6, 2), (10, 3), fill: green.lighten(80%), stroke: green)
          content((8, 2.5), [物理地址: 125D(H)], size: 10pt)

          rect((6, 1), (10, 2), fill: green.lighten(90%), stroke: green)
          content((8, 1.5), [块4, 偏移605], size: 10pt)
        },
      )
    ]
  ],
)

#answer(
  "2",
  [
    *FCFS调度：*
    - 作业1：周转时间 = 10.5 - 8.5 = 2.0小时
    - 作业2：周转时间 = 12.1 - 9.2 = 2.9小时
    - 作业3：周转时间 = 12.6 - 9.4 = 3.2小时
    - 平均周转时间 = (2.0+2.9+3.2)/3 = 2.7小时

    *SJF调度（按执行时间排序：作业3→作业2→作业1）：*
    #figure()[
      #table(
        columns: (auto, auto, auto, auto, auto, auto),
        stroke: 0.5pt,
        align: center,
        // inset: 8pt,
        table.header(
          [*作业号*],
          [*提交时间*],
          [*执行时间*],
          [*开始时间*],
          [*完成时间*],
          [*周转时间*],
        ),

        [1], [8.5], [2.0], [8.5], [10.5], [2.0],
        [3], [9.2], [1.6], [11], [12.6], [3.4],
        [2], [9.4], [0.5], [10.5], [11.0], [1.6],
      )
    ]

    #figure(caption: [作业调度算法图示])[#set text(font: "pingfang sc", lang: "zh", size: 10pt)
      #canvas(
        length: 1cm,
        {
          import draw: *

          // Apple 配色方案
          let blue = rgb(0, 122, 255)
          let green = rgb(52, 199, 89)
          let orange = rgb(255, 149, 0)
          let red = rgb(255, 59, 48)
          let purple = rgb(175, 82, 222)
          let gray = rgb(142, 142, 147)

          // =================== FCFS 调度 ===================
          content((10, 14.5), [*先来先服务调度算法 (FCFS)*], size: 14pt)

          // 绘制时间轴 (8-13小时)
          line((2, 13), (18, 13), stroke: 2pt, mark: (end: ">"))
          content((18.5, 13), [时间 (小时)], size: 10pt)

          // 时间刻度和标签
          for i in range(11) {
            let time = 8 + i * 0.5
            let x = 2 + i * 1.6
            line((x, 12.8), (x, 13.2), stroke: 1pt)
            content((x, 12.4), [#time], size: 8pt)
          }

          // 标注重要时间点
          content((1, 12), [时间点:], size: 10pt)

          // 作业到达时间箭头 (红色箭头表示到达)
          let arrive1_x = 2 + (8.5 - 8) * 3.2 // 8.5小时
          let arrive2_x = 2 + (9.2 - 8) * 3.2 // 9.2小时
          let arrive3_x = 2 + (9.4 - 8) * 3.2 // 9.4小时

          line((arrive1_x, 13.3), (arrive1_x, 13.8), stroke: red + 2pt, mark: (end: ">"))
          content((arrive1_x, 14.1), text(fill: red, size: 9pt)[J1到达], angle: 0deg)
          content((arrive1_x, 14.5), text(fill: red, size: 8pt)[8.5h], angle: 0deg)

          line((arrive2_x, 13.3), (arrive2_x, 13.8), stroke: green + 2pt, mark: (end: ">"))
          content((arrive2_x, 14.1), text(fill: green, size: 9pt)[J2到达], angle: 0deg)
          content((arrive2_x, 14.5), text(fill: green, size: 8pt)[9.2h], angle: 0deg)

          line((arrive3_x, 13.3), (arrive3_x, 13.8), stroke: orange + 2pt, mark: (end: ">"))
          content((arrive3_x + 0.5, 14.1), text(fill: orange, size: 9pt)[J3到达], angle: 0deg)
          content((arrive3_x + 0.4, 14.5), text(fill: orange, size: 8pt)[9.4h], angle: 0deg)

          // FCFS执行时间轴
          content((1, 11.5), [执行:], size: 10pt)

          // 作业1执行: 8.5-10.5
          let start1_x = arrive1_x
          let end1_x = 2 + (10.5 - 8) * 3.2
          rect((start1_x, 10.8), (end1_x, 11.4), fill: red.lighten(70%), stroke: red + 2pt)
          content((start1_x + (end1_x - start1_x) / 2, 11.1), text(fill: white)[*J1执行 2.0h*], size: 10pt)

          // 开始执行标记
          line((start1_x, 11.5), (start1_x, 12), stroke: red + 3pt, mark: (end: ">"))
          content((start1_x - 0.3, 12.2), text(fill: red, size: 8pt)[开始], angle: 90deg)

          // 作业2执行: 10.5-12.1
          let start2_x = end1_x
          let end2_x = 2 + (12.1 - 8) * 3.2
          rect((start2_x, 10.8), (end2_x, 11.4), fill: green.lighten(70%), stroke: green + 2pt)
          content((start2_x + (end2_x - start2_x) / 2, 11.1), text(fill: white)[*J2执行 1.6h*], size: 10pt)

          line((start2_x, 11.5), (start2_x, 12), stroke: green + 3pt, mark: (end: ">"))
          content((start2_x - 0.3, 12.2), text(fill: green, size: 8pt)[开始], angle: 90deg)

          // 作业3执行: 12.1-12.6
          let start3_x = end2_x
          let end3_x = 2 + (12.6 - 8) * 3.2
          rect((start3_x, 10.8), (end3_x, 11.4), fill: orange.lighten(70%), stroke: orange + 2pt)
          content((start3_x + (end3_x - start3_x) / 2, 11.1), text(fill: white,size: 8pt)[*J3执 0.5h*], size: 9pt)

          line((start3_x, 11.5), (start3_x, 12), stroke: orange + 3pt, mark: (end: ">"))
          content((start3_x - 0.3, 12.2), text(fill: orange, size: 8pt)[开始], angle: 90deg)

          // 等待时间可视化
          content((1, 10.2), [等待:], size: 10pt)

          // J2等待时间: 9.2-10.5
          rect((arrive2_x, 9.8), (start2_x, 10.1), fill: green.lighten(90%), stroke: (paint: green, dash: "dashed"))
          content((arrive2_x + (start2_x - arrive2_x) / 2, 9.95), text(fill: green, size: 8pt)[J2等待 1.3h])

          // J3等待时间: 9.4-12.1
          rect((arrive3_x, 9.5), (start3_x, 9.8), fill: orange.lighten(90%), stroke: (paint: orange, dash: "dashed"))
          content((arrive3_x + (start3_x - arrive3_x) / 2, 9.65), text(fill: orange, size: 8pt)[J3等待 2.7h])

          // =================== SJF 调度 ===================
          content((10, 8.5), [*最短作业优先调度算法 (SJF)*], size: 14pt)

          // 绘制时间轴
          line((2, 7), (18, 7), stroke: 2pt, mark: (end: ">"))
          content((18.5, 7), [时间 (小时)], size: 10pt)

          // 时间刻度
          for i in range(11) {
            let time = 8 + i * 0.5
            let x = 2 + i * 1.6
            line((x, 6.8), (x, 7.2), stroke: 1pt)
            content((x, 6.4), [#time], size: 8pt)
          }

          // 作业到达时间箭头 (与FCFS相同)
          line((arrive1_x, 7.3), (arrive1_x, 7.8), stroke: red + 2pt, mark: (end: ">"))
          content((arrive1_x, 8.1), text(fill: red, size: 9pt)[J1到达], angle: 0deg)

          line((arrive2_x, 7.3), (arrive2_x, 7.8), stroke: green + 2pt, mark: (end: ">"))
          content((arrive2_x, 8.1), text(fill: green, size: 9pt)[J2\ 到达], angle: 0deg)

          line((arrive3_x, 7.3), (arrive3_x, 7.8), stroke: orange + 2pt, mark: (end: ">"))
          content((arrive3_x, 8.1), text(fill: orange, size: 9pt)[J3\ 到达], angle: 0deg)

          // SJF执行时间轴
          content((1, 5.5), [执行:], size: 10pt)

          // 作业1执行: 8.5-10.5 (首先到达，立即执行)
          let sjf_start1_x = arrive1_x
          let sjf_end1_x = 2 + (10.5 - 8) * 3.2
          rect((sjf_start1_x, 4.8), (sjf_end1_x, 5.4), fill: red.lighten(70%), stroke: red + 2pt)
          content((sjf_start1_x + (sjf_end1_x - sjf_start1_x) / 2, 5.1), text(fill: white)[*J1执行 2.0h*], size: 10pt)

          line((sjf_start1_x, 5.5), (sjf_start1_x, 6), stroke: red + 3pt, mark: (end: ">"))
          content((sjf_start1_x - 0.3, 6.2), text(fill: red, size: 8pt)[开始], angle: 90deg)

          // 作业3执行: 10.5-11.0 (最短作业优先)
          let sjf_start3_x = sjf_end1_x
          let sjf_end3_x = 2 + (11.0 - 8) * 3.2
          rect((sjf_start3_x, 4.8), (sjf_end3_x, 5.4), fill: orange.lighten(70%), stroke: orange + 2pt)
          content((sjf_start3_x + (sjf_end3_x - sjf_start3_x) / 2, 5.1), text(fill: white, size: 7pt)[*J3执行 0.5h*], size: 9pt)

          line((sjf_start3_x, 5.5), (sjf_start3_x, 6), stroke: orange + 3pt, mark: (end: ">"))
          content((sjf_start3_x - 0.3, 6.2), text(fill: orange, size: 8pt)[开始], angle: 90deg)

          // 作业2执行: 11.0-12.6
          let sjf_start2_x = sjf_end3_x
          let sjf_end2_x = 2 + (12.6 - 8) * 3.2
          rect((sjf_start2_x, 4.8), (sjf_end2_x, 5.4), fill: green.lighten(70%), stroke: green + 2pt)
          content((sjf_start2_x + (sjf_end2_x - sjf_start2_x) / 2, 5.1), text(fill: white)[*J2执行 1.6h*], size: 10pt)

          line((sjf_start2_x, 5.5), (sjf_start2_x, 6), stroke: green + 3pt, mark: (end: ">"))
          content((sjf_start2_x - 0.3, 6.2), text(fill: green, size: 8pt)[开始], angle: 90deg)

          // SJF等待时间可视化
          content((1, 4.2), [等待:], size: 10pt)

          // J3等待时间: 9.4-10.5
          rect(
            (arrive3_x, 3.8),
            (sjf_start3_x, 4.1),
            fill: orange.lighten(90%),
            stroke: (paint: orange, dash: "dashed"),
          )
          content((arrive3_x + (sjf_start3_x - arrive3_x) / 2, 3.95), text(fill: orange, size: 8pt)[J3等待 1.1h])

          // J2等待时间: 9.2-11.0
          rect((arrive2_x, 3.5), (sjf_start2_x, 3.8), fill: green.lighten(90%), stroke: (paint: green, dash: "dashed"))
          content((arrive2_x + (sjf_start2_x - arrive2_x) / 2, 3.65), text(fill: green, size: 8pt)[J2等待 1.8h])
        },
      )
    ]
  ],
)

#answer(
  "3",
  [先对 55, 58, 39, 18, 90, 160, 150, 38, 180 这9个磁道进行排序:\ 18, 38, 39, 55, 58, 90, 150, 160, 180\
    *FCFS算法：*
    寻道次序：100→55→58→39→18→90→160→150→38→180
    移动距离：45+3+19+21+72+70+10+112+142 = 494磁道

    *SSTF算法：*
    服务序列依次为: 90 58 55 39 30 88 150 160 180
    移动的磁道数分别是10 32 3 16 1 20 132 10 20
    总的移动的磁道数为: 244

  ],
)


