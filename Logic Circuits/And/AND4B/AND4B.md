# 4-Bit And 详细说明

## 描述：

AND4B 元件是 AND 门的总线版本。它将 And-operation 应用于两个输入的每对位。

## 接口规范：

输入：in1[4], in2[4];  
输出：out[4];

## 图形化表示：

```
          _ _ _ _ _ _
-in1[4]--┆           ┆
         ┆   AND4B   ┆--out[4]-
-in2[4]--┆_ _ _ _ _ _┆

```

## 真值表：

| in1  | in2  | out  |
| :--: | :--: | :--: |
| 0000 | 0000 | 0000 |
| 0000 | 0101 | 0000 |
| 0000 | 1010 | 0000 |
| 0000 | 1111 | 0000 |
| 0101 | 0101 | 0101 |
| 0101 | 1010 | 0000 |
| 0101 | 1111 | 0101 |
| 1010 | 1010 | 1010 |
| 1010 | 1111 | 1010 |
| 1111 | 1111 | 1111 |
