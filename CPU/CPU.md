# Microhard Central Processing Unit 详细说明

## 描述：

在高层次上，Microhard CPU 能够执行类似于 Microhard ALU 的各种指令。然而，虽然 ALU 只能执行单个算术指令，但 CPU 能够通过管理程序执行流程来执行由许多指令组成的复杂程序。

## 接口规范：

输入: instr[16], data[16], reset;
输出: write, dataAddr[16], instrAddr[16], result[16];



## 图形化表示：

```
             _____
-instr[16]--|     |--instrAddr[16]-
            |     |
--data[16]--| CPU |--dataAddr[16]--
            |     |--result[16]----
            |_____|--write---------
               |
-------reset---/

```

## 真值表：

 instr  | data   | reset | instrAddr | dataAddr | result  | write|i.e.
| :----: | :-: | :--: | :----: | :---: | :---: | :---: | --- | 
 0x0000 | 0x0000 | 0     | x         | x        | x       | 0| // result = const + AR = ? (unknown register states)
 0x0000 | 0x0000 | 1     | x         | x        | x       | 0| // reset program counter
 0x80FF | 0x0000 | 0     | 0x0000    | x        | x       | 0| // load 0x00FF into MR
 0x3C01 | 0x0000 | 0     | 0x0001    | 0x00FF   | 0x0001  | 0| // AR = const + data = 1 + 0 = 1
 0x0000 | 0x0000 | 0     | 0x0002    | 0x00FF   | 0x0001  | 0| // result = AR + const = 1
 0x4000 | 0x0000 | 0     | 0x0003    | 0x00FF   | 0x0001  | 0| // MR = AR + const = 1
 0x7800 | 0x0000 | 0     | 0x0004    | 0x0001   | 0x0001  | 1| // data = const + MR = 1
 0x1020 | 0x0001 | 0     | 0x0005    | 0x0001   | 0x0000  | 0| // load MR into PC
 0x1000 | 0x0001 | 0     | 0x0001    | 0x0001   | 0x0000  | 0| // no operation
 0x1000 | 0x0001 | 0     | 0x0002    | 0x0001   | 0x0000  | 0| // no operation
