Inputs: instr[16];.
Outputs: cToM,loadA,loadD,loadM,op1, op2[2],opCode[4],jmpIfZ,constant[15];

//1. specify the components you want to use here
Parts :
    myMux4w16b MUX4W16B, myMux1 MUX, myMux2 MUX, myMux3 MUX, myMux4 MUX ,myMux5 MUX
;

//2. wire them up
Wires:
    instr[1:15] -> constant, instr[13] -> op1, instr[11:12] -> op2, instr[7:10] -> opcode,

    //implenment loadA,loadD, loadM function with one mux4w16b and three mux
    000 -> myMux4w16b.in1[1:3], 100 -> myMux4w16b.in2[1:3],
    010 -> myMux4w16b.in3[1:3], 001 -> myMux4w16b.in4[1:3],
    instr[14:15] -> myMux4w16b.sel,
    //loadA
    myMux4w16b.out[3] -> myMux1.in1, 0 -> myMux1.in2,instr[16] -> myMux1.sel,
    myMux1.out -> loadA,
    //loadD
    myMux4w16b.out[1] -> myMux2.in1, 0 ->myMux2.in2,instr[16] -> myMux2.sel,
    myMux2.out -> loadD,
    //loadM
    myMux4w16b.out[2] -> myMux3.in1, 1 -> myMux3.in2, instr[16] -> myMux3.sel,
    myMux3.out -> loadM,
    //cToM
    instr[16]-> myMux4.in1,1 -> myMux4.in2, instr[16] -> myMux4.sel,
    myMux4.out ->cToM,
    //jmpIfz
    instr[6] -> myMux5.in1,0 ->myMux5.in2,instr[16] -> myMux5.sel,
    myMux5.out -> jmpIfz
;