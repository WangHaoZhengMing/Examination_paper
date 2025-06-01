#import "temple.typ": *
#import "@preview/cetz:0.3.1": canvas, draw
#import "@preview/cetz-plot:0.1.0": plot
#question_counter.update(1)
#set text(
  font: ("PingFang SC", "SF-Symbols"),
  size: 10.5pt,
  fill: dark_gray,
  spacing: 130%,
  lang: "zh",
)
// 页面设置
#set page(
  margin: (x: 2cm, y: 2cm),
  numbering: "1",
  header: context {
    let current = counter(page).at(here())
    if current != 1 {
      line(length: 100%, stroke: divider_color)
      h(1em)
      text(dark_gray)[高中物理习题集]
    }
  },
)

= 振动
#question_box[
  #grid(
    columns: (70%, auto),
    gutter: 1em,
  )[
    如图所示，一质量为 $m$ 的滑块，两边分别与劲度系数为 $k_1$ 和 $k_2$ 的轻弹簧联接，两弹簧的另外两端分别固定在墙上。滑块 $m$ 可在光滑的水平面上滑动，$0$ 点为系统平衡位置。将滑块 $m$ 向右移动到 $x_0$，由静止释放并开始计时，取坐标如图示，则其振动方程为：
  ][
    #figure(
      canvas({
        import draw: *
        scale(0.5)

        // 绘制墙壁
        draw.line((0.5, 0), (0.5, 2), stroke: 1pt)
        draw.line((10, 0), (10, 2), stroke: 1pt)

        // 绘制弹簧（用锯齿线表示）
        for i in range(7) {
          draw.line(
            (0.5 + i * 0.5, 0.8 + calc.pow(-1, i) * 0.2),
            (1.0 + i * 0.5, 0.8 + calc.pow(-1, i + 1) * 0.2),
          )
        }

        for i in range(8) {
          draw.line(
            (6.0 + i * 0.5, 0.8 + calc.pow(-1, i) * 0.2),
            (6.5 + i * 0.5, 0.8 + calc.pow(-1, i + 1) * 0.2),
          )
        }

        // 绘制滑块
        draw.rect((4, 0.3), (6, 1.3), fill: light_gray)

        // 添加标注
        draw.content((4.8, 0.8), [$m$])
        draw.content((2, 1.3), [$k_1$])
        draw.content((7.5, 1.3), [$k_2$])

        // 添加坐标轴
        draw.line((0.5, 0), (10.5, -0), mark: (end: ">"))
        // draw.content((5, -0.9), [$x$])
        draw.content((5, -0.5), [$0$])
        draw.content((8.2, -0.4), [$x_0$])

        // 添加虚线指示当前位置
        draw.line((5, 0), (5, -0.2), dash: "dashed")
        draw.line((8, 0), (8, -0.2), dash: "dashed")
      }),
      caption: [双弹簧振动系统],
    )
  ]
]

#solution_box[
  由于两个弹簧是并联的，等效弹簧常数等于两个弹簧常数之和：
  $ k = k_1 + k_2 $

  简谐运动的 $omega$ 由质量和弹簧常数决定：
  $ omega = sqrt(k/m) = sqrt((k_1 + k_2)/m) $

  滑块的位移随时间变化满足简谐运动方程：
  $ x(t) = A cos(omega t + phi) $

  由于滑块从位置 $x_0$ #text(fill: primary_orange)[静止释放]，初始相位为0：
  $ phi = 0 $

  因此，滑块的完整振动方程为：
  $ x(t) = x_0 cos(sqrt((k_1 + k_2)/m) t) $
]

#question_box[
  劲度系数分别为 $k_1$ 和 $k_2$ 的两个轻弹簧串联在一起，下面挂着质量为 $m$ 的物体，构成一个竖直的弹簧振子，则该系统的振动周期为
]

#solution_box[
  串联弹簧的等效弹簧常数公式为：
  $ 1 / k = 1 / k_1 + 1 / k_2 = (k_1 k_2) / (k_1 + k_2) $

  简谐振动的周期公式为：
  $ T = 2π sqrt(m/k) $

  将等效弹簧常数代入：
  $ T = 2π sqrt(m(k_1 + k_2)/(k_1 k_2)) $
]

#question_box[
  一个质点做简谐运动，振幅为 $A$，在初始时刻质点的位置为 $A/2$，且向 $x$ 轴的正方向运动，代表此简谐振动旋转矢量图是]

#solution_box[
  简谐运动的旋转矢量图表示质点在初始时刻的位置和速度方向。已知质点在初始时刻的位置为 $A/2$，且向 $x$ 轴的正方向运动，代表此简谐振动旋转矢量图是]

#figure(
  canvas({
    import draw: *
    scale(0.8)
    // 绘制坐标轴
    line((-3, 0), (3, 0), mark: (end: ">"))
    line((0, -3), (0, 3), mark: (end: ">"))

    // 绘制圆
    circle((0, 0), radius: 2, stroke: gray)

    // 绘制旋转矢量
    let angle = 320
    draw.line(
      (0, 0),
      (2 * calc.cos(angle * calc.pi / 180), 2 * calc.sin(angle * calc.pi / 180)),
      mark: (end: ">"),
      stroke: blue,
    )

    // 标注A
    draw.content((2.3, 0), $A$)

    // 标注角度
    // draw.arc((0,0), start: 0, stop: angle, radius: 0.5)
    draw.content((0.4, -0.8), $60°$)

    // 标注当前位置
    draw.content((1, 0.4), $A / 2$)
  }),
  caption: [旋转矢量图],
)

#question_box[
  一质点在 $x$ 轴上做简谐振动，振幅为 4 cm，周期为 2 s，取其平衡位置为坐标原点。若 $t$ = 0 时，质点第一次通过 $x$ = -2 cm 处，且向 $x$ 轴负方向运动，则质点第二次通过 $x$ = -2 cm 处的时刻为
]

#solution_box[
  由于质点在 $t$ = 0 时通过 $x$ = -2 cm 且向负方向运动，说明此时：
  $ x = -2 "cm", v < 0 $

  简谐运动的位移方程可以写为：
  $ x = 4 cos(π t + phi) $

  代入初始条件：
  $ -2 = 4 cos(phi) $
  $ cos(phi) = -1 / 2 $

  由于速度为负，说明在第二象限：
  $ phi = 2π / 3 $

  所以位移方程为：
  $ x = 4 cos(π t + 2π/3) $

  第二次通过同位置时，相位差为 $2π/3$：
  $ π t + 2π / 3 = 2π - 2π / 3 $
  $ t = 4 / 3 "s" $

]

#question_box[
  一质点沿 $x$ 轴做简谐振动，振动方程为 $x = 4×10^(-2) cos(2 π t + π/3)$ (SI)。从 $t$ = 0 时刻起，到质点位置在 $x$ = -2 cm 且向 $x$ 轴正向运动的最短时间间隔为
]

#solution_box[
  由振动方程可知：
  $ x = 4×10^(-2) cos(2 π t + π/3) $

  当 $x$ = -2 cm = -2×10^(-2) m 时：
  $ -2×10^(-2) = 4×10^(-2) cos(2 π t + π/3) $
  $ cos(2 π t + π/3) = -1 / 2 $

  这个方程在一个周期内有两个解，分别对应向负向运动和向正向运动的时刻。
  向正向运动时，相位角在第三象限：
  $ 2 π t + π / 3 = 5π / 3 $
  $ t = 1 / 2 - 1 / 6 = 1 / 3 $

  因此最短时间间隔为：
  $ t = 1 / 6 "s" $
]

#question_box[
  两个同周期简谐振动曲线如图所示，$x_2$ 的相位比 $x_1$ 的相位

  #figure(
    canvas({
      import draw: *
      scale(0.6)

      // 绘制两条正弦曲线
      draw.line((0, 2), (5, 2), stroke: 1pt)
      plot.plot(
        size: (4, 4),
        x-min: 0,
        x-max: 6,
        y-min: -1,
        y-max: 1,
        x-tick-step: 1,
        y-tick-step: 1,
        // x-grid: "both",
        // y-grid: "both",
        axis-style: "left",
        {
          // 第一条曲线
          plot.add(
            x => calc.sin(x),
            domain: (0, 6),
            style: (stroke: blue),
          )

          // 第二条曲线（相位差π/2）
          plot.add(
            x => calc.sin(x - calc.pi / 2),
            domain: (0, 6),
            style: (stroke: red),
          )
        },
      )

      // 添加标注
      draw.content((0.6, 3), [$x_1$])
      draw.content((3.2, 3), [$x_2$])
    }),
    // caption: [两个简谐振动的位移-时间图],
  )
]
#solution_box("落后2/π")
#question_box[
  一质点做简谐振动，周期为 $T$。当它由平衡位置向 $x$ 轴正方向运动时，从二分之一最大位移处到最大位移处这段路程所需要的时间为
]

#grid(
  columns: (60%, auto),
  gutter: 1em,
)[
  #question_box[用余弦函数描述一个简谐振子的振动，若其速度～时间（$v$ \~ $t$）关系曲线如图所示，则振动的初相位为]
][
  #figure(
    canvas({
      import draw: *
      scale(0.5)
      // 设置坐标轴样式
      // set - style(axes: (stroke: .5pt, tick: (stroke: .5pt)))

      // 绘制两条正弦曲线
      draw.line((0, 2), (5, 2), stroke: 1pt)
      plot.plot(
        size: (4, 4),
        x-min: 0,
        x-max: 6,
        y-min: -1,
        y-max: 1,
        x-tick-step: 1,
        y-tick-step: 1,
        // x-grid: "both",
        // y-grid: "both",
        axis-style: "left",
        {
          // 第二条曲线（相位差π/2）
          plot.add(
            x => -calc.sin(x + calc.pi / 6),
            domain: (0, 6),
            style: (stroke: primary_blue),
          )
        },
      )

      // 添加标注
      draw.content((-0.7, 1), [$-v_m / 2$])
      // draw.content((3.2, 3), [$x_2$])
    }),
    caption: [],
  )
]
#solution_box[
  简谐运动的位移和速度方程分别为：
  $ x = A cos(omega t + phi) $
  $ v = -A omega sin(omega t + phi) $

  标准的速度-时间图像（初相位为0时）是这样的：
  #figure(
    canvas({
      import draw: *
      scale(0.5)
      draw.line((0, 2), (5, 2), stroke: 1pt)
      plot.plot(
        size: (4, 4),
        x-tick-step: calc.pi,
        y-tick-step: 1,
        axis-style: "left",
        {
          plot.add(
            x => -calc.sin(x),
            domain: (0, calc.pi * 2),
            style: (stroke: primary_blue),
          )
        },
      )
    }),
    caption: [标准速度-时间图像],
  )

  而题目给出的图像在t=0时刻就已经到达了-vm/2的位置，说明整个图像向左平移了π/6。
  由于#text(fill: orange)[图像向左平移]相当于#text(fill: primary_blue)[初相位增加]，所以初相位为π/6。
]

#question_box[求下面的简谐振动方程
  #figure(
    caption: [简谐振动位移-时间图像],
    canvas({
      import draw: *
      scale(0.5)
      draw.line((0, 2), (6, 2), stroke: 1pt)
      plot.plot(
        size: (6, 4),
        x-tick-step: 1, // 改为π/2为单位
        y-tick-step: 1,
        axis-style: "left",
        x-label: $t$, // 添加坐标轴标签
        y-label: $x（c m)$,
        {
          plot.add(
            x => 2 * calc.cos(calc.pi * (4 / 3) * x + calc.pi * 2 / 3),
            domain: (0, 2),
            style: (stroke: primary_blue),
          )
        },
      )
    }),
  )<9>
]
#solution_box[
  由@9 可知，振幅为2cm，周期为2s，频率为1Hz，角频率为2π。

  初相位为π/3。
  所以振动方程为：
  $ x = 2 cos(4/3 π t + phi_1) $

  整理得：
  $ x = 2 cos 4 / 3 [π (t + 3 / 4pi phi_1)] $
  @9 是由 $x = 2 cos 4 / 3 π (t + 3 / 4pi phi_1) $ 转化来的。
  故：
  $ 4 / 12T = 3 / 4pi phi_1 $
  $ phi_1 = 4 / 3pi * 1 / 2 = (2pi) / 3 $
]

#question_box[一个弹簧振子做简谐振动，当位移为振幅的一半时，其动能为总能量的 $3/4$]
#solution_box[
  解：设总能量为E，动能为Ek，势能为Ep

  1. 由机械能守恒定律：
  $ E = E_k + E_p $

  2. 对于简谐振动：
  $ E_k = 1 / 2m v^2 $
  $ E_p = 1 / 2k x^2 $
  $ E = 1 / 2k A^2 $

  3. 当 $x = A/2$ 时：
  $ E_p = 1 / 2k(A / 2)^2 = 1 / 8k A^2 = 1 / 4E $

  4. 由机械能守恒：
  $ E_k = E - E_p = E - 1 / 4E = 3 / 4E $
]

#question_box[一个质点做简谐运动，总能量为 $E_1$ ,如果物体的振幅变为原来的2倍，质量增大为原来的4倍，则总能量变为]
#solution_box[
  解：设原振幅为 $A_1$，质量为 $m_1$，则原总能量为：
  $ E_1 = 1 / 2k A_1^2 $

  振幅变为原来的2倍，质量增大为原来的4倍，则新振幅为 $2A_1$，质量为 $4m_1$，则新总能量为：
  $ E_2 = 1 / 2k (2A_1)^2 = 4 * 1 / 2k A_1^2 = 4E_1 $
]
#question_box[当质点以频率 $v$ 做简谐运动时，它的动能的变化频率是]
#solution_box[
  解：设质点做简谐运动，其位移方程为：
  $ x = A cos(2 π v  t) $

  1. 速度方程为位移对时间的导数：
  $ v = -2 π v A sin(2 π v t) $

  2. 动能表达式：
  $ E_k = 1 / 2 m v^2 $
  $ = 1 / 2 m (2 π v A)^2 sin^2(2 π v t) $
  $ = 2 π^2 m v^2 A^2 sin^2(2 π v t) $

  3. 由三角函数关系：
  $ sin^2(2 π v t) = 1 / 2(1 - cos(4 π v t)) $

  4. 代入动能表达式：
  $ E_k = 2π^2 m v^2 A^2 [1 / 2(1 - cos(4 π v t))] $
  $ = π^2 m v^2 A^2 - π^2 m v^2 A^2 cos(4 π v t) $

  5. 从上式可以看出，动能是一个余弦函数，其角频率为4πv，
  因此动能变化的频率为：
  $ f_k = 2v $


]

#question_box[如图所示是两个简谐振动的振动曲线。(A=1)这两个简谐振动合成的余弦振动的初相位为

  #figure(
    canvas({
      import draw: *
      scale(0.6)
      line((0, 2), (5, 2), stroke: 1pt)
      plot.plot(
        size: (4, 4),
        x-min: 0,
        x-max: 6,
        y-min: -1,
        y-max: 1,
        x-tick-step: 1,
        y-tick-step: 0.5,
        axis-style: "left",
        {
          // 第一条曲线 x₁ = Acos(ωt + φ₁)
          plot.add(
            x => calc.cos(x + calc.pi), // φ₁ = π
            domain: (0, 6),
            style: (stroke: blue),
          )

          // 第二条曲线 x₂ = (A/2)cos(ωt + φ₂)
          plot.add(
            x => 0.5 * calc.cos(x), // φ₂ = 0, 振幅为A/2
            domain: (0, 6),
            style: (stroke: red),
          )
        },
      )
    }),
    caption: [],
  )]

#solution_box[
  解：根据两个简谐振动的初始状态：
  1. 第一个振动 $x_1$：
    - 振幅 $A_1 = A$
    - 初相位 $phi_1 = π$（因为 $t=0$ 时，$x_1 = -A$）

  2. 第二个振动 $x_2$：
    - 振幅 $A_2 = A/2$
    - 初相位 $phi_2 = 0$（因为联想cos， $t=0$ 时，$x_2 = A/2$）

  3. 合成振动的初相位公式：
  $ phi = arctan(frac(A_1 sin phi_1 + A_2 sin phi_2, A_1 cos phi_1 + A_2 cos phi_2)) $

  4. 代入数值：
  $
    phi = arctan(frac(A sin π + (A/2) sin 0, A cos π + (A/2) cos 0))
    = arctan(frac(0 + 0, -A + A/2))
    = arctan(frac(0, -A/2))
    = π
  $
]




= 波动
#question_counter.update(1)
#question_box[
  #grid(
    columns: (70%, auto),
    gutter: 1em,
  )[
    如图所示为一平面简谐波在 t = 0 时刻的波形图。设此简谐波的频率为 250 Hz，且此时质点 P 的运动方向向下，求：

    (1) 该波的表达式；\
    (2) 在距原点 O 为 100 m 处质点的振动方程与振动速度表达式。
  ][
    #figure(
      canvas({
        import draw: *
        scale(0.6)
        draw.line((0, 2), (5, 2), stroke: 1pt)
        plot.plot(
          size: (4, 4),
          x-min: 0,
          x-max: 100,
          y-min: -1.2,
          y-max: 1.2,
          x-tick-step: 500,
          y-tick-step: 2,
          axis-style: "left",
          {
            plot.add(
              x => calc.cos(-(1 / 50) * calc.pi * x - calc.pi / 4),
              domain: (-100, 300),
              style: (stroke: blue),
            )
          },
        )
        // 添加标注
        draw.content((1.5, 1.6), [$100$])
        draw.content((-0.5, 3), [$(sqrt(2)A) / 2$])
      }),
      // caption: [t = 0时刻的波形图],
    )
  ]
]

#solution_box[
  + 第一问
    1. 一般形式：对于一个沿 $x$ 轴正方向传播的简谐波，其表达式的一般形式为：
      $ y = A cos(omega t - k x + phi) $
      #figure(
        table(
          columns: (auto, auto),
          stroke: 0.5pt,
          align: left,
          [符号], [含义],
          [$A$], [振幅],
          [$omega$], [角频率（$omega = 2π f$，$f$ 是频率）],
          [$k$], [波数（$k = 2π/lambda$，$lambda$ 是波长）],
          [$phi$], [初相位],
          [$t$], [时间],
          [$x$], [位置],
        ),
        caption: [波动方程中的物理量及其含义],
      )

    2. 确定已知量：从题图和题目信息中，我们可以确定以下参数：
      - 频率 $f = 250 "Hz"$：题目已知
      - 波长 $lambda = 200 "m"$：由题图可知，$100"m"$ 对应 $1/2$ 波长，所以 $lambda = 2 dot 100"m" = 200"m"$
      - 角频率 $omega = 2π f = 500π "rad/s"$：由频率计算得出
      - 波数 $k = 2(π/lambda) = 0.01π "rad/m"$：由波长计算得出
    3. $O$ 点的振动方程是：
      $ y = A cos(500π t + pi/4) $

    4. 最终的波表达式：
      $ y = A cos(500π t - 0.01π x+ π/4) $
  + 第二问

    把 $x = 100$ 代入波表达式：
    $ y_1 = A cos(500π t +(5pi)/4) $
    振动速度：
    $ v = (y_1)' = -500π A sin(500π t + (5pi)/4) $
]



#question_box[图示是一平面简谐波在 $t = 0$ 时刻的波形图。求：\
  (1) 该波的波动表达式；\
  (2) $P$ 点的振动方程是
  #figure(
    canvas({
      import draw: *
      scale(0.6)
      draw.line((0, 2), (6, 2), stroke: 1pt, mark: (end: ">"))
      plot.plot(
        size: (6, 4),
        x-min: 0,
        x-max: 0.6,
        y-min: -0.04,
        y-max: 0.04,
        x-grid: "both",
        x-tick-step: 0.2,
        y-tick-step: 0.04,
        axis-style: "left",
        {
          // 绘制波形
          plot.add(
            x => -0.04 * calc.sin(5 * calc.pi * x),
            domain: (0, 0.7),
            style: (stroke: primary_blue + 1pt),
          )
        },
      )

      // 添加标注
      draw.content((2, 1.4), [$P$])
      // draw.content((0.5, -1.4), [$P$])
      // draw.content((-0.2, 1), [$A$])
      draw.content((3.6, 4.6), [$u=0.08"m/s"$])
      draw.line((2, 4.3), (4, 4.3), mark: (end: ">"))

      // 标记P点位置
      // draw.dot((2.4, 0), radius: 2pt, fill: primary_blue)
    }),
    caption: [t = 0时刻的波形图],
  )
]
#solution_box[
  已知量：
  $ u = 0.08"m/s" $
  $ lambda = 0.4"m" $
  $ A = 0.04"m" $
  我们来求几个量：
  $ omega = (2pi) / T = 2pi u / lambda = 2pi * 0.08 / 0.4 = 0.4pi "rad/s" $
  $ k = (2pi) / lambda = 2pi / 0.4 = 5pi "rad/m" $
  P 点的振动方程，P 正在向下运动，故可以取 $ phi = (3pi)/2 $

  代入公式：
  $ y = A cos(omega t - k x + phi) = 0.04 cos(0.4pi t - 5pi x + (3pi)/2) $
]

#question_box[一简谐横波的传播于平面简谐波在 $t=2s$ 时的波形曲线如图所示，则原点 $O$ 的振动方程可能为

  #figure(
    canvas({
      draw.scale(0.6)
      draw.line((0, 2), (6, 2), stroke: 1pt, mark: (end: ">"))
      plot.plot(
        size: (6, 4),
        x-min: 0,
        x-max: 4,
        y-min: -0.5,
        y-max: 0.5,
        x-grid: "both",
        x-tick-step: 1,
        y-tick-step: 0.5,
        axis-style: "left",
        // 绘制波形
        {
          plot.add(
            x => 0.5 * calc.sin(calc.pi / 2 * x),
            domain: (-1, 4),
            style: (stroke: primary_blue + 1pt),
          )
        },
      )

      // 添加标注
      draw.content((2, 1.4), [$P$])
      draw.line((4, 4.3), (2, 4.3), mark: (end: ">"))
    }),
    caption: [t = 2时刻的波形图],
  )

]

#solution_box[
  自己对照就好了，无法求出
]

#question_box[波由一种介质传入另一种介质时，其传播速度、频率和波长【C】

  A. 三量都发生变化;
  B. 三量都不发生变化;
  C. 速度和波长变化，频率不变;
  D. 速度和频率变化，波长不变.
]

#question_box[若一平面简谐波的表达式为 $y=A cos(B t-C x)$，式中 $A$、$B$、$C$ 为正常量，则【B】

  A. 角频率为 $2pi / B$;\
  B. 波长为 $2pi / C$;\
  C. 周期为 $1/B$;\
  D. 波速为 $C$.
]

#question_box[频率为 100 Hz，传播速度为 300 m/s 的平面简谐波，波线上距离小于半个波长的两点振动的相位差为 $pi/3$，则此两点相距
]

#question_box[波速为 4 m/s 的平面余弦波沿 x 轴负方向传播，如果某时刻位于原点的振动方程为 $y=3 cos(pi/2)t$，那么位于 $x=4$ m 处的振动方程为
]

#solution_box[
  注意到：
  在上一秒，$x=4$ 的点已经振动过了，所以原点现在的振动方程为：

]
#question_box[如图所示，一平面简谐波沿 x 轴正向传播，已知 P 点的振动方程为 $y=A cos(omega t + phi)$，则该波的表达式为

]
