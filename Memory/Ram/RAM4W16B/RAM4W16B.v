Inputs: in[16], load, address[2];
Outputs: out[16];

//1. specify the components you want to use here
Parts :
    myReg16b1 REGISTER16B, myReg16b2 REGISTER16B, myReg16b3 REGISTER,
    myReg16b4 REGISTER16B, myMux4w16b MUX4W16B, myDemux4w myDemux4W
;

//2. wire them up
Wires:
    in -> myReg16b1.in, in -> myReg16b2.in, in -> myReg16b3.in,
    in -> myReg16b4.in, load -> myDemux4w.in, address -> myDemux4w.sel, 
    myDemux4w.out1 -> myReg16b1.load, myDemux4w.out2 -> myReg16b2.load, 
    myDemux4w.out3 -> myReg16b3.load, myDemux4w.out4 -> myReg16b4.load,
    myReg16b1.out -> myMux4w16b.in1, myReg16b2.out -> myMux4w16b.in2,
    myReg16b3.out -> myMux4w16b.in3, myReg16b4.out -> myMux4w16b.in4,
    address -> myMux4w16b.sel, myMux4w16b.out -> out
;