Inputs: in1[4], in2[4], carryIn;
Outputs: out[4], carryOut;

// 1. specify the components you want to use here
Parts :
    myFulladder1 FULLADDER, myFulladder2 FULLADDER, myFulladder3, myFulladder4 FULLADDER
;

//2. wire them up
Wires :
    in1[1] -> myFulladder1.in1, in2[1] -> myFulladderl.in2, 
    carryIn -> myFulladder1.carryIn, myFulladder1.out -> out[1],
    in1[2] -> myFulladder2.in1, in2[2] -> myFulladder2.in2, 
    myFulladder2.out ->out[2], myFulladder1.carryout -> myFulladder2.carryIn,
    in1[3] -> myFulladder3.in1, in2[3] -> myFulladder3.in2,
    myFuliadder3.out -> out[3], myFuliadder2.carryout -> myFulladder3.carryIn,
    in1[4] -> myFulladder4.in1, in2[4] -> myFulladder4.in2,
    myFuliadder4.out -> out[4], myFuliadder3.carryout -> myFulladder4.carryIn,
    myFulladder4.carryout -> carryOut
;