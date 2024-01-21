Inputs: instr[16], data[16], reset;
Outputs: write, dataAddr[16], instrAddr;

// 1. more devices are needed to implement behaviospecification
Parts :
    decoder DECODER, mReg REGISTER16B, alu ALU16B,
    jumpIfAndZero AND, op1Mux MUX16B, op2Mux MUX4W16B, loadMux MUX16B
;

//2. wire them up
Wires:.
    instr -> decoder.instr, alu.out -> result, mReg.out -> dataAddr,
    pc.out -> instrAddr, decoder.opCode -> alu.opCode, decoder.loadD -> write,

    //op1
    decoder.op1 -> op1Mux.sel, decoder.constant[1:5] -> op1Mux.in2[1:5],
    aReg.out -> op1Mux.in1, op1Mux.out -> alu.ini,

    //op2
    decoder.op2 -> op2Mux.sel, decoder.constant[1:5] -> op2Mux.in1[1:5],
    aReg.out -> op2Mux.in2, mReg.out -> op2Mux.in3, data -> op2Mux.in4,
    op2Mux .out -> alu .in2,

    //jmpIfAndZero
    decoder.jmpIfZ -> jumpIfAndZero.in1, alu.zero -> jumpIfAndZero.in2,
    jumpIfAndzero.out -> pc.load, mReg.out -> pc.in,

    //AR ,MR
    decoder.loadM -> mReg.load, decoder.loadA -> aReg.load,
    decoder.constant -> load, Mux.in2[1:15], loadMux.out -> mReg.in,
    decoder.cToM -> loadMux.sel, alu.out -> aReg.in, alu.out -> loadMux .in1,

    reset -> pc.reset
;