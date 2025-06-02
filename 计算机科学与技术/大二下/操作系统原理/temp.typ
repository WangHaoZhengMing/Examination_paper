#import "@preview/cetz:0.3.4": *

// Apple
#let apple-blue = rgb("#007AFF")
#let apple-gray = rgb("#8E8E93")
#let apple-green = rgb("#34C759")
#let apple-orange = rgb("#FF9500")
#let apple-red = rgb("#FF3B30")
#let apple-purple = rgb("#AF52DE")

#canvas({
  import draw: *
  
  // 定义坐标和参数
  let x-a = 3       // 入射光线A的x坐标
  let x-b = 7       // 入射光线B的x坐标
  let block-top-y = 0
  let block-bottom-y = -5
  let block-left-x = 0
  let block-right-x = 10
  
  let r-o = 1       // o波前半径
  let r-ex = 1.2    // e波前x半径
  let r-ey = 1.8    // e波前y半径
  
  // E光方向向量
  let dx-e = 0.6
  let dy-e = -3
  
  // 计算e光在底部的终点
  let e-a-tip = (x-a + dx-e * (block-bottom-y / dy-e), block-bottom-y)
  let e-b-tip = (x-b + dx-e * (block-bottom-y / dy-e), block-bottom-y)
  
  // 计算e波前上的点
  let s-e = 1 / calc.sqrt(calc.pow(dx-e, 2)/calc.pow(r-ex, 2) + calc.pow(dy-e, 2)/calc.pow(r-ey, 2))
  let pe-a-on-wavelet = (x-a + s-e * dx-e, block-top-y + s-e * dy-e)
  let pe-b-on-wavelet = (x-b + s-e * dx-e, block-top-y + s-e * dy-e)
  
  // 绘制材料块
  rect((block-left-x, block-top-y), (block-right-x, block-bottom-y), 
       stroke: (paint: apple-gray, thickness: 1.5pt), fill: none)
  
  // 绘制光轴
  let optic-axis-start = (block-left-x - 0.5, block-top-y - 1)
  let optic-axis-end = (block-right-x + 0.5, block-top-y - 1 - 0.3 * (block-right-x - block-left-x + 1))
  line(optic-axis-start, optic-axis-end, 
       stroke: (paint: apple-gray, thickness: 1pt, dash: "dashed"))
  content(optic-axis-start, anchor: "south-east", padding: 2pt)[光轴]
  
  // 入射光线A和B
  line((x-a, block-top-y + 1), (x-a, block-top-y), 
       stroke: (paint: apple-blue, thickness: 1.5pt), mark: (end: ">"))
  content((x-a, block-top-y + 1), anchor: "south")[A]
  
  line((x-b, block-top-y + 1), (x-b, block-top-y), 
       stroke: (paint: apple-blue, thickness: 1.5pt), mark: (end: ">"))
  content((x-b, block-top-y + 1), anchor: "south")[B]
  
  // O光（寻常光）
  line((x-a, block-top-y), (x-a, block-bottom-y), 
       stroke: (paint: apple-green, thickness: 1.5pt), mark: (end: ">"))
  content((x-a - 0.3, block-bottom-y), anchor: "north-east")[o光]
  
  line((x-b, block-top-y), (x-b, block-bottom-y), 
       stroke: (paint: apple-green, thickness: 1.5pt), mark: (end: ">"))
  
  // E光（非寻常光）
  line((x-a, block-top-y), e-a-tip, 
       stroke: (paint: apple-orange, thickness: 1.5pt), mark: (end: ">"))
  
  line((x-b, block-top-y), e-b-tip, 
       stroke: (paint: apple-orange, thickness: 1.5pt), mark: (end: ">"))
  content((e-b-tip.at(0) + 0.3, e-b-tip.at(1)), anchor: "north-west")[e光]
  
  // O波前（半圆）
  arc((x-a, block-top-y), start: 0deg, stop: 180deg, radius: r-o, 
      stroke: (paint: apple-green, thickness: 1pt))
  arc((x-b, block-top-y), start: 0deg, stop: 180deg, radius: r-o, 
      stroke: (paint: apple-green, thickness: 1pt))
  
  // E波前（半椭圆）
  for center in ((x-a, block-top-y), (x-b, block-top-y)) {
    bezier(
      (center.at(0) + r-ex, center.at(1)),
      (center.at(0) + r-ex, center.at(1) - r-ey * 0.552),
      (center.at(0) + r-ex * 0.552, center.at(1) - r-ey),
      (center.at(0), center.at(1) - r-ey),
      stroke: (paint: apple-purple, thickness: 0.8pt)
    )
    bezier(
      (center.at(0), center.at(1) - r-ey),
      (center.at(0) - r-ex * 0.552, center.at(1) - r-ey),
      (center.at(0) - r-ex, center.at(1) - r-ey * 0.552),
      (center.at(0) - r-ex, center.at(1)),
      stroke: (paint: apple-purple, thickness: 0.8pt)
    )
  }
  
  // 波前虚线
  // O波前（水平）
  line((x-a, block-top-y - r-o), (x-b, block-top-y - r-o), 
       stroke: (paint: apple-green, thickness: 1pt, dash: "dashed"))
  
  // E波前（倾斜）
  line(pe-a-on-wavelet, pe-b-on-wavelet, 
       stroke: (paint: apple-purple, thickness: 1pt, dash: "dashed"))
  
  // o光的偏振指示器（点）
  for y-multiplier in (0.2, 0.35, 0.5, 0.65, 0.8) {
    circle((x-a, block-top-y + y-multiplier * block-bottom-y), radius: 0.04, 
           fill: apple-green)
    circle((x-b, block-top-y + y-multiplier * block-bottom-y), radius: 0.04, 
           fill: apple-green)
  }
  
  // e光的偏振指示器（双箭头）
  let angle-e = calc.atan2(dy-e, dx-e) * 180 / calc.pi
  let angle-perp = angle-e + 90deg
  let marker-length = 0.15
  
  for (ray-start, ray-end) in (((x-a, block-top-y), e-a-tip), ((x-b, block-top-y), e-b-tip)) {
    for pos-fraction in (0.25, 0.45, 0.65, 0.85) {
      let mark-center = (
        ray-start.at(0) + pos-fraction * (ray-end.at(0) - ray-start.at(0)),
        ray-start.at(1) + pos-fraction * (ray-end.at(1) - ray-start.at(1))
      )
      
      let perp-dx = marker-length * calc.cos(angle-perp * calc.pi / 180)
      let perp-dy = marker-length * calc.sin(angle-perp * calc.pi / 180)
      
      line(
        (mark-center.at(0) + perp-dx, mark-center.at(1) + perp-dy),
        (mark-center.at(0) - perp-dx, mark-center.at(1) - perp-dy),
        stroke: (paint: apple-orange, thickness: 1pt),
        mark: (start: ">", end: ">")
      )
    }
  }
})