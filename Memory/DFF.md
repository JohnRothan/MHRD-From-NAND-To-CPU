# D-Flip-Flop 详细说明

## 描述：

DFF 元素将它接收到的值保存在其输入上，并在一个时钟周期后输出该值。它的行为可以描述为 out（t）=in（t-1）。在时钟周期内保持状态的属性使 DFF 元素成为所有内存元素的基础。  
查看有关顺序逻辑的手册章节。

## 接口规范：

输入：in1;  
输出：out;

## 图形化表示：

```
       _ _ _ _ _ _
      ┆           ┆
-in---┆    DFF    ┆--out-
      ┆_ _ _ _ _ _┆

```

## 真值表：

| in  | out  | 
| :--: | :--: | 
|  0   |  0   |  
|  1   |  0   |  
|  1   |  1   | 
|  0   |  1   | 
|  0   |  0   | 
|  1   |  0   | 
|  1   |  1   | 