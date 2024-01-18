# NAND详细说明

## 描述：
NAND门（Not-And的缩写）有两个输入和一个输出。如果两个输入均为 1，则输出为 0。否则输出为1。
NAND门是最基本的元素。它可用于构建所有其他模块。

## 接口规范：

输入：in1,  in2;
输出：out;

图形化表示：
---------------
        ______
-in1--|       |
      | ADD4B |--out-
-in2--|_______|

## 真值表：
|  in1 |in2   | out  |
| :------------: | :------------: | :------------: |
|  0 |0   |  1 |
|   0|  1 |  1 |
|   1| 0  |  1 |
|   1| 1  | 0  |