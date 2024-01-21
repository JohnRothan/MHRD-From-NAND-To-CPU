Inputs: in[4], load;
Outputs: out[4];

//1. specify the components you want to use here
Parts :
    myMux1 MUX, myMux2 MUX, myMux3 MUX, myMux4 MUX, 
    myDff1 DFF, myDff2 DFF, myDff3 DFF, myDff4 DFF
;
//2. wire them up
Wires :
    in[1] -> myMux1.in2, load -> myMux1.sel, myMux1.out -> myDff1.in,
    myDff1.out -> out[1], myDff1.out -> myMux1.in1,
    in[2] -> myMux2.in2, load-> myMux2.sel, myMux2.out -> myDff2.in,
    myDff2.out -> out[2], myDff2.out -> myMux2.in1,
    in[3] -> myMux3.in2, load -> myMux3.sel, myMux3.out -> myDff3.in,
    myDff3.out->out[3], myDff3.out -> myMux3.in1,
    in[4] -> myMux4.in2,'load -> myMux4.sel, myMux4.out -> myDff4.in,
    myDff4.out -> out[4], myDff4.out -> myMux4.in1
;
