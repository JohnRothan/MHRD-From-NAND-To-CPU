# Microhard 16-Bit Algorithmic Logic Unit 详细说明

## 描述：

ALU16B 元件具有两个数据总线输入和一个操作码总线输入。该元素可以对数据输入执行 16 种不同的操作，并将结果写入数据总线输出。要执行的操作由操作代码总线的值决定。此外，ALU 还具有指示最终结果是零还是负值的标志
操作代码总线中的每个位都有一个专用功能：  
opCode[4] -> 如果 1：按位取反 in1  
opCode[3] -> 如果 1：按位取反 in2  
opCode[2] -> 如果 0： out = （in1 ADD in2）;如果 1：out = （in1 NAND in2）;  
opCode[1] -> 如果 1：按位取反  
通过对输入和输出的取反，结合 add- 和 nand- 逻辑的应用，可以实现很多结果，如示例所示。

## 接口规范：

Inputs: in1[16], in2[16], opCode[16];
Outputs: out[16], negative, zero;