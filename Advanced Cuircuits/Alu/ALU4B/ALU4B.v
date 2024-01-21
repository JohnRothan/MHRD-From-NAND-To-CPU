Inputs: in1[4], in2[4], opcode[4];
Outputs: out[4], negative, zero;

//1. specify the components you want to use here
Parts :
    myMux4b1 MUX4B, myMux4b2 MUX4B, myMux4b3 MUX4B,myMux4b4 MUX4B,
    myNot4b1 NOT4B, myNot4b2 NOT4B, myNot4b3NOT4B, myNot NOT,
    myAdd4b ADDER4B, myNand4b NAND4B, myOr4w OR4w
;

//2. wire them up
Wires:
    in1 -> myMux4b1.in1, in1 -> myNot4b1.in, myNot4b1.out -> myMux4b1.in2,
    in2 -> myMux4b2.in1, in2 -> myNot4b2.in, myNot4b2.out -> myMux4b2.in2,
    opCode[4]->myMux4b1.sel, opcode[3] -> myMux4b2.sel,

    myMux4b1.out -> myAdd4b.in1, myMux4b2.out -> myAdd4b.in2,
    myMux4b1.out -> myNand4b.in1, myMux4b2.out -> myNand4b.in2,
    myAdd4b.out -> myMux4b3.in1, myNand4b.out -> myMux4b3.in2,
    opCode[2]->myMux4b3.sel,

    myMux4b3.out -> myMux4b4.in1, myMux4b3.out -> myNot4b3.in,
    myNot4b3.out ->myMux4b4.in2, opCode[1l] ->myMux4b4.sel,
    myMux4b4.out ->out, myMux4b4.out - myOr4w.in,
    myOr4w.out -> myNot.in, myNot.out -> zero, myMux4b4.out[4]->negative
;