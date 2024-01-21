Inputs :in1[4], in2[4], sel;
Outputs: out[4];


//1. specify the components you want to use here
Parts :
    myMux1 MUX, myMux2 MUX, myMux3 MUX，myMux4 MUX
;

//2. wire them up
Wires:
    in1[1] -> myMux1.in1, in2[1] -> myMux1.in2, sel -> myMux1.sel,
    in1[2] -> myMux2.in1, in2[2] -> myMux2.in2, sel -> myMux2.sel,
    in1[3] -> myMux3.in1, in2[3] -> myMux3.in2, sel -> myMux3.sel,
    in1[4] -> myMux4.in1, in2[4] -> myMux4.in2, sel -> myMux4.sel,
    myMux1.out -> out[1], myMux2.out -> out[2], myMux3.out -> out[3], myMux4.out->out[4]
;
