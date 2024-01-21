Inputs: in[4], load, reset;
Outputs: out[4];

//1. specify the components you want to use here
Parts :
    myMux4b1 MUX4B, myMux4b2 MUX4B, myReg4b REGISTER4B, myAdd4b ADDER4B
;

//2. wire them up
Wires:
    in -> myMux4b1.in2,load -> myMux4b1.sel,
    myMux4b1.out -> myMux4b2.in1, 0000 -> myMux4b2.in2,
    reset -> myMux4b2.sel, myMux4b2.out -> myReg4b.in, 1 -> myReg4b.load,
    myReg4b.out -> out, 0001 -> myAdd4b.in1, myReg4b.out -> myAdd4b.in2,
    myAdd4b.out -> myMux4b1.in1
;