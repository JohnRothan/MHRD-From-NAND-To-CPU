# NOT 详细说明

## 描述：

NOT门 有一个输入和一个输出。如果输入为 1，则输出为 0，反之亦然。因此，NOT门只是对输入取反。
与任何其他元素一样，NOT门 可以使用 NAND门 构建。请查看[NAND详细说明](/Logic%20Circuits/Nand/NAND.md)。


## 接口规范：

输入：in  
输出：out;

## 图形化表示：

```
       _ _ _ _ _ _
      ┆           ┆
-in-- ┆    NOT    ┆--out-
      ┆_ _ _ _ _ _┆

```

## 真值表：

|  in  | out  |
| :--: | :--: |
|  0   |  1   |
|  1   |  0   |