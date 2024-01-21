# Instruction Decoder 详细说明

## 描述：

解码器在 Microhard CPU 中用于解码指令。有两种不同类型的指令。

首先，如果 instr[16] 等于 “1”，则 instr[1：15] 必须解释为必须加载到存储寄存器中的常量。在这种情况下，“cToM”和“loadM”输出必须设置为“1”，而“loadD”、“loadA”和“jmpIfZ”输出必须设置为“0”。此外，指令的下 15 位必须写入“常量”。

其次，如果 instr[16] 等于 “0”，那么解码器必须以更复杂的方式解释指令的其余部分：

```
bit:                         16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1
instr[1:16]:                  0  d  d  a  b  b  o  o  o  o  j  c  c  c  c  c
                                 \__/  |  \__/  \________/  |  \___________/
instr[14:15] destination    ------/    |   |        |       |        |
instr[13]    operand1       -----------/   |        |       |        |
instr[11:12] operand2       ---------------/        |       |        |
instr[7:10]  operation code ------------------------/       |        |
instr[6]     jump if zero   --------------------------------/        |
instr[1:5]   constant       -----------------------------------------/
```

在这种情况下，CPU 必须执行“操作代码”指定的操作，操作数由“operand1”和“operand2”解码。

指令的“操作码”、“操作数 1”、“操作数 2”和“零跳转”位可以分别直接传输到解码器的“opCode”、“op1”、“op2”、“jmpIfZ”输出。

与另一种情况一样，指令的下 15 位必须写入“常量”。但请注意，在这种情况下，当使用常量作为操作数时，CPU 只需将 5 个最低的“常数”位馈送到 ALU。

如果“operand1”为“0”，则地址寄存器的值将作为操作数馈送到 ALU。否则，由位 instr[1：5] 表示的“常量”将作为第一操作数馈送。

目标指定必须保存 ALU 操作结果的位置。虽然“op1”和“op2”由 CPU 解码，但指令的“目标”位必须由解码器根据以下解码规则进行解码：

destination = 00 -> 将 loadA、loadM 和 loadD 设置为 0  
destination = 01 -> 将 loadA 设置为 1 ;将 loadM 和 loadD 设置为 0  
destination = 10 -> 将 loadM 设置为 1 ;将 loadA 和 loadD 设置为 0  
destination = 11 -> 将 loadD 设置为 1 ;将 loadA 和 loadM 设置为 0

## 接口规范：

输入: instr[16];  
输出: cToM, loadA, loadD, loadM, op1, op2[2], opCode[4], jmpIfZ, constant[15];

## 图形化表示：

```
             _________
            |         |--cToM---------
            |         |--loadA----------
            |         |--loadD----------
            |         |--loadM----------
-instr[16]--| Decoder |--op1----------
            |         |--op2[2]-------
            |         |--opCode[4]----
            |         |--jmpIfZ-------
            |_________|--constant[15]-

```

## 真值表：

| instr  |     | cToM | jmpIfZ | loadA | loadD | loadM | op1 | constant | op2 | opCode |
| :----: | :-: | :--: | :----: | :---: | :---: | :---: | :-: | :------: | :-: | :----: |
| 0x0000 |     |  0   |   0    |   0   |   0   |   0   |  0  |  0x0000  | 00  |  0000  |
| 0x8000 |     |  1   |   0    |   0   |   0   |   1   |  0  |  0x0000  | 00  |  0000  |
| 0xFFFF |     |  1   |   0    |   0   |   0   |   1   |  1  |  0x7FFF  | 11  |  1111  |
| 0x7FFF |     |  0   |   1    |   0   |   1   |   0   |  1  |  0x7FFF  | 11  |  1111  |
| 0x7C1F |     |  0   |   0    |   0   |   1   |   0   |  1  |  0x7C1F  | 11  |  0000  |