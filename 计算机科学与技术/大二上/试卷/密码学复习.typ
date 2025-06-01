#set enum(numbering: "1.a.")
#let pmod(x) = $space(mod #x)$
// #set page(footer: align(center)[ #counter(page).display("第 1 页（共 1 页）",both: true)])
#outline()
#pagebreak()
= 第一章
+ 解同余方程组
  $ cases(
    x equiv 2 pmod(3),
    x equiv 3space (mod 5),
    x equiv 2pmod(7),) $

  + 对于方程一，要找一个数$Y_1$：同满足除以 3 余 2，同时能被 5 和 7 整除。
    即 $ Y_1 = underline(35y_1 equiv 2 pmod(3)) $

    在 $(mod 3)$ 的条件下，35 和 2 等价，这是因为：
    $ 35 equiv 2space (mod 3) $
    解这个同余方程
    $ 35y_1 equiv 2 pmod(3)$
    $ 2y_1 equiv 2 pmod(3) $
    同时除以 2 得到
    $ y_1 equiv 1 pmod(3)$
    所以 $ y_1 = 1 + 3k_1 $
    我们取 $k_1=0,$ 即 $y_1=1$，所以 $Y_1=35$
    
  + 对于方程二，要找一个数$Y_2$：同满足除以 5 余 3，同时能被 3 和 7 整除。
    即 $ Y_2 = underline(21y_2 equiv 3 pmod(5) ) $

    在 $(mod 5)$ 的条件下，21 和 1 等价，这是因为：
    $ 21 equiv 1 pmod(5) $
    解这个同余方程
    $ 21y_2 equiv 3pmod(5) $
    $ y_2 equiv 3pmod(5)  $
    所以 $ y_2 = 3 + 5k_2 $
    我们取 $k_2=0,$ 即 $y_2=3$，所以 $Y_2=63$

  + 对于方程三，要找一个数$Y_3$：同满足除以 7 余 2，同时能被 3 和 5 整除。
    即 $ Y_3 = underline(15y_3 equiv 2 pmod(7) ) $

    在 $(mod 7)$ 的条件下，15 和 1 等价，这是因为：
    $ 15 equiv 2pmod(7) $
    解这个同余方程
    $ 15y_3 equiv 2pmod(7) $
    $ y_3 equiv 2pmod(7)  $
    所以 $ y_3 = 2 + 7k_3 $
    我们取 $k_3=0,$ 即 $y_3=2$，所以 $Y_3=30$
  这样我们就有特解 $ x=Y_1+Y_2+Y_3=128 $
  求最小正整数解: 将 x 对 M 取模，得到最小正整数解 
  $ x = 128 space (mod) 105 = 23 $

  
+ 求同余方程 $x^2 equiv -2pmod(67)$ 的解数。

  求出勒让德符号 $ ((-2)/67) $
  化简这个式子 $ ((-2)/67) = ((-1)/67) * (2/67) $
  又由于 $ (2/p)=cases(
    space space 1\,   当 space p pmod(8) equiv 1\,7,
    -1\, 当 space p pmod(8) equiv 3\,5
  ) $

  $ ((-1)/p)=cases(
    -1\, 当 space p space (mod 4) equiv 3,
    space space 1\,  p space 除 space 4 space 余 space 1
  ) $
  上式等于 $-1 times -1 = 1$
  
  $"所以这个同余方程有解" $
+ 求解 $17x equiv 14 (mod 21)$


  在 (mod 21)下，$ 17 equiv -4 \,space 14 equiv -7 $
  所以原式等价为$ -4x equiv -7 pmod(21) $
  即解$ 4x equiv 7pmod(21) $
  得到$ x equiv 7 pmod(21) $
+ 证明：如果 $p$ 和 $q$ 是不同的素数，则 $p^(q-1) + q^(p-1) equiv 1 pmod(p q) $。
  
    由费马小定理
    $ p^(q-1) equiv 1 pmod(q)\ q^(p-1)equiv 1 pmod(p) $
    又因为 $q^(p-1)$ 和 $p^(q-1)$ 分别是 $q$ 和 $p$ 的倍数,所以 
    $ p^(q-1) + q^(p-1) equiv 0+1 pmod(p)\ p^(q-1) + q^(p-1) equiv 1+0 pmod(q) $
    根据中国剩余定理，由于 $p$ 和 $q$ 是素数所以这个同余方程组在 $pmod(p q)$ 下有唯一解，且一定满足 
    $ cases(
    x equiv 1 pmod(p),
    x equiv 1 pmod(q)
    ) $
    显然，这个唯一解是 $1$。
    所以 $ p^(q-1) + q^(p-1) equiv 1 pmod(p q) $
#pagebreak()
= 第二章
+ 写出模 9 的一个完全剩余系, 它的每个数是奇数.
+ 写出模 9 的一个完全剩余系, 它的每个数是偶数.
+ ①或②中的要求对模 10 的完全剩余系能实现吗?

+ 证明: 当 $m > 2$ 时, $0^2, 1^2, ..., (m-1)^2$ 一定不是模 m 的完全剩余系.

  $underline("我们可以证明这个序列有两个数是同余的")$\
  当 $m > 2$ 时，表中各个数均不相等.\
  然而
  $ 1^2 equiv 1 pmod(m) $ 
  $ (m-1)^2 equiv m^2 - 2m + 1 equiv 1 pmod(m) $
  因此
  $ 1^2 equiv (m-1)^2 pmod(m) $ 
  所以
   $  space 0^2, 1^2,...,(m-1)^2 "不是模 m 完全剩余系"。 $

+ 设有 m 个整数, 它们都不属于剩余类 $0 pmod(n)$. 那么, 其中必有两个数属于同一剩余类.

// + 在任意取定的对模 m 两两不同余的 $[m/2]+1$ 个数中, 必有两数之差属于剩余类 $1 space(mod space m)$, 如何推广本题?

+ (不会)回答各题\
  (i) 把剩余类 $1 space(mod space 5)$ 写成模 15 的剩余类之和;\
  (ii) 把剩余类 $6 space(mod space 10)$ 写成模 120 的剩余类之和;\
  (iii) 把剩余类 $6 space(mod space 10)$ 写成模 80 的剩余类之和.

+ 2003 年 5 月 9 日是星期五, 问第 $220080509$ 天是星期几?

+ 证明: 如果 $a_i equiv b_i space(mod space m), 1 ≤ i ≤ k$, 则
 + $a_1 + ... + a_k equiv b_1 + ... + b_k space(mod space m)$;
 + $a_1...a_k equiv b_1...b_k space(mod space m)$.

+ 设 p 是素数. 证明: 如果 $a^2 equiv b^2 space(mod space p)$, 则 $p|a-b$ 或 $p|a+b$.\
  解：由同余式 $a^2 equiv b^2 pmod(p)$ 
  $ a^2 - b^2 equiv 0 pmod(p) $
  因式分解得
  $ (a-b)(a+b) equiv 0 pmod(p) $
  即
  $ p|(a-b)(a+b) $
  因为 $p$ 是素数，所以 $p$ 必定整除 $(a-b)$ 或 $(a+b)$

// + 设 n=pq, 其中 p, q 是素数. 证明: 如果 $a^2 equiv b^2 space(mod space n)$, n \nmid a-b, n \nmid a+b, 则 (n, a-b) > 1, (n, a+b) > 1.

+ 设整数 a, b, c space(c > 0), 满足$ a equiv b pmod(c)$, 求证: (a, c) = (b, c).


+ 证明: 如果 $a^k equiv b^k pmod(m)$, $a^(k+1) equiv b^(k+1) pmod(m)$, 这里 a, b, k, m 是整数, $k > 0,space m > 0$, 并且 $(a, m)=1$, 那么 $a equiv b pmod(m)$. 如果去掉 $(a, m)=1$ 这个条件, 结果仍成立吗?
+ 证明：如果 n 是正整数，那么\
  (a) $1+2+3+...+(n-1) equiv 0pmod(n)$\
  (b) $1^3+2^3+3^3+...+(n-1)^3equiv 0 pmod(n)$
+ 计算：
  $2^(23)pmod(47)$.  $space space$
  $2^(47)pmod(47)$. $space space$
  $2^(200)pmod(47)$\
+ 运用 $"Wilson"$ 定理，求 $8dot 9 dot 10 dot 11 dot 12 dot 13 pmod(7) $\
  由 $"Wilson"$ 定理，对于一个素数 $p$
  $ (p-1)!equiv -1 pmod(p) $
  在 $pmod(7)$ 下
  $ 1equiv 8\ 2equiv 9\  .... $
  故原式等于
  $ 6!equiv 1 pmod(7) $

= 第三章

+ 求解以下同余方程组
  $ cases(
  x equiv b_1 pmod(3),
  x equiv b_2 pmod(6),
  x equiv b_3 pmod(7),
  x equiv b_4 pmod(11)
  ) $
  注意到，前两个方程可能存在矛盾，如下
  $ x-b_1 =3k_1\ x-b_2 = 3dot (2 k_2) = 3 dot k_2 $
  即说明若要有解
  $ b_1 equiv b_2 pmod(3) $
  我们假设有解，即有
  $ cases(
  x equiv b_2 pmod(6),
  x equiv b_3 pmod(7),
  x equiv b_4 pmod(11)
  ) $
  我们可以忽略第一个方程（因为它被第二个方程包含）
  + 对于方程一，要找一个数$Y_2$：同满足除以 6 余 $b_2$，同时可以被 7，11整除\

    $ Y_2 = underline(77y_2 equiv b_2 pmod(6) ) $
    $因 为 gcd(77,6)=1，"故在" pmod(6) "的条件下" $
    $ 77equiv 5 $
    故有
    $ 5y_2 equiv b_2 pmod(6) $
    求出一个逆元为 5
    $ 5times 5y_2 equiv b_2 times 5 pmod(6) $
    $ y_2 equiv 5b_2 pmod(6) $
    故有
    $ y_2 = 5b_2 + 6k_2 $
    令 $k_2=0$，即 $y_2=5b_2$ 。所以 $ Y_2=385b_2 $
  + 对于方程二，要找一个数$Y_3$：同满足除以 7 余 $b_3$，同时可以被 6，11整除\
    $ Y_3 = underline(66y_3 equiv b_3 pmod(7) ) $
    $因 为 gcd(66,7)=1，"故在" pmod(7) "的条件下" $
    $ 66equiv 3 $
    故有
    $ 3y_3 equiv b_3 pmod(7) $
    求出一个逆元为 5
    $ 3times 5y_3 equiv b_3 times 5 pmod(7) $
    $ y_3 equiv 5b_3 pmod(7) $
    故有
    $ y_3 = 5b_3 + 7k_3 $
    令 $k_3=0$，即 $y_3=5b_3$ 。所以 $ Y_3=330b_3 $
  + 对于方程三，要找一个数$Y_4$：同满足除以 11 余 $b_4$，同时可以被 6，7整除\
    $ Y_4 = underline(42y_4 equiv b_4 pmod(11) ) $
    $因 为 gcd(42,11)=1，"故在" pmod(11) "的条件下" $
    $ 42equiv 9 $
    故有
    $ 9y_4 equiv b_4 pmod(11) $
    求出一个逆元为 5
    $ 9times 5y_4 equiv b_4 times 5 pmod(11) $
    $ y_4 equiv 5b_4 pmod(11) $
    故有
    $ y_4 = 5b_4 + 11k_4 $
    令 $k_4=0$，即 $y_4=5b_4$ 。所以 $ Y_4=210b_4 $
  终于，我们有
  $ x equiv (Y_1 + Y_2 + Y_3) pmod(462) $
  即 $ x equiv 385b_2 + 330b_3 + 210b_4 pmod(462) ，space "其中 " b_2 equiv b_1 pmod(3) $
  
#pagebreak()

= 第四章
+ 求解同余方程 $x^2 equiv 39 pmod(105)$ 的解数和解。

  注意到，105 较大，我们可以分解成 $3times 5 times 7$\ 
  $ x^2 equiv 39 equiv 0 pmod(3) $
  $ x^2 equiv 39 equiv 4 pmod(5) $
  $ x^2 equiv 39 equiv 4 pmod(7) $
  化简得：
  $ x  equiv 0 pmod(3) $
  $ x  equiv plus.minus 2 pmod(5) $
  $ x  equiv plus.minus 2 pmod(7) $
  故原方程的解的个数为 $1times 2times 2 = 4$、
  现在我们需要组合这些解。根据中国剩余定理，我们可以得到以下四组解：\
  #grid(columns: (50%,30%),align: center,[$ 1.cases( 
    x equiv 0 pmod(3),
    x equiv 2 pmod(5),
    x equiv 2 pmod(7)) 
      $],
    [\ 解得 $x equiv 23 pmod(105)$]
   )
  #grid(columns: (50%,30%),align: center,[$ 2.cases( 
    x equiv 0 pmod(3),
    x equiv 2 pmod(5),
    x equiv 5 pmod(7)) 
      $],
    [\ 解得 $x equiv 87 pmod(105)$]
   )
  #grid(columns: (50%,30%),align: center,[$ 3.cases( 
    x equiv 0 pmod(3),
    x equiv 3 pmod(5),
    x equiv 2 pmod(7)) 
      $],
    [\ 解得 $x equiv 18 pmod(105)$]
   )
  #grid(columns: (50%,30%),align: center,[$ 4.cases( 
    x equiv 0 pmod(3),
    x equiv 3 pmod(5),
   x equiv 5 pmod(7)) 
      $],
    [\ 解得 $x equiv 93 pmod(105)$]
   )
  因此
  $ x equiv 18, 23, 87, 93 pmod(105) $

+ 找出椭圆方程 $E: y^2 = x^3 - 3x + 1 pmod(7)$ 的所有点。
