# Demultiplexer 详细说明

## 描述：

DEMUX 元素具有一个数据输入、一个选择输入和两个数据输出。如果选择输入为 0，则数据传输到第一个输出。否则，数据将传输到第二个输出。不采用数据位值的输出值始终为零。

## 接口规范：

输入：in, sel;  
输出：out1, out2;

## 图形化表示：

```
       ______
      /      |--out1-
-in--| DEMUX |
      \______|--out2-
         |
-sel-----/

```

## 真值表：

| sel | in  | out1 | out2 |
| :-: | :-: | :--: | :--: |
|  0  |  0  |  0   |  0   |
|  0  |  1  |  1   |  0   |
|  1  |  0  |  0   |  0   |
|  1  |  1  |  0   |  1   |
