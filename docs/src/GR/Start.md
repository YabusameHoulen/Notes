# 简介

收集没用的数学定义

## 拓扑空间

对于集合$S$, $S$的子集族$U$如果满足如下开集公理就称之为$S$的拓扑, $(S,U)$被称为拓扑空间 

::: details 开集公理
1. 子集族$U$中元素为开集, 且$S, \emptyset \in U$
2. 有限个开集的交集在$U$中
3. 任意多个开集的并集在$U$中
:::

拓扑空间之间同胚：两个拓扑空间可以建立双射 $\phi$, $\phi$和$\phi^{-1}$是连续的映射(开集的逆象是开集)

## 图 (Chart)
(Chart)$C = (U_i,\phi)$被称为拓扑空间$(S,U)$的图, $U_i$是$U$的子集, $\phi$是$(S,U)$到$(\mathrm{R},U_{std})$的同胚：

$$U_i \subseteq U \rightarrow \phi(U_i) \subseteq \mathrm{R}^n$$ 

其中$n$是$U_i$的维度, $\phi(U)$是$\mathrm{R}^n$上的开集

## 拓扑流形
指的是一个与$\mathrm{R}^n$局域同胚的拓扑空间$(S,U)$: 即在每一点p, 有图$C = (U,\phi)$使得$p \in U$
(外加一些奇怪的拓扑正则条件：Hausdorff, second countable or paracompact...)

用Chart可以在开集上引入局域坐标系$p \in U \rightarrow \vec{\mathbf{x}}_{\phi(p)} \in \mathrm{R}^n$

重叠的图可以建立在$\mathrm{R}^n$开子集间的连续映射:

$$\phi_2 \circ \phi_1^{-1}(\vec{\mathbf{x}}_{\phi(p)}^{1}) = \phi_2(p) = \vec{\mathbf{x}}_{\phi(p)}^{2}$$ 

可以用局部坐标在$\mathrm{R}^n$上表示定义在$S$上的函数：例如对$f: S \rightarrow \mathrm{R}$和$C = (U,\phi)$

$$f_U = f \circ \phi^{-1} : \phi(U) \subseteq \mathrm{R}^n \rightarrow \mathrm{R}$$ 

$$f(p) = (f \circ \phi^{-1} \circ \phi)(p) = f_U(\phi(p)) = f_U(\vec{\mathbf{x}}_{\phi(p)})$$ 

## 图 (Chart)的兼容性
为了能够将平滑性（$C^\infty$-可微性的概念从局部的图一致地扩展到整个流形, 需要在相交的图(Chart)上设相容性条件:
转换函数$\phi_2 \circ \phi_1^{-1}$和$\phi_1 \circ \phi_2^{-1}$都是光滑的, 或者这两个图(Chart)覆盖的范围
不相交($U_1 \cap U_2 = \emptyset$)这样点p周围函数的平滑性将与图表无关 

::: tip
对于拓扑流形和连续性条件, 任何两个图都是自动兼容的, 因为转换函数是连续的 

:::

## 图册 (Atlas) 和光滑流形
流形$(S,U)$的光滑图集$A(S)$是一组覆盖$S$的图表$C_a=(U_a，\phi_a)$, 这些图表都平滑且相互兼容

如果$A_1$的所有图都与$A_2$的所有图兼容, 则同一拓扑流形$(S,U)$的光滑图集$A_1(S)$和$A_2(S)$称为彼此兼容,
这定义了图集上的等价关系, 拓扑流形上的光滑结构是等价类, 光滑流形是具有光滑结构的拓扑流形

光滑流形上的函数$f: S \rightarrow \mathrm{R}$光滑？它所有的局部坐标表示都是光滑的

::: tip
抛开事实~~拓扑细节~~不谈，光滑流形是一个空间，可在这个空间上的局部坐标系一致地使用微积分 

:::
