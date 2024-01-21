Inputs: carryIn, in1, in2;
Outputs: out, carryOut;

//1. specify the components you want to use here
Parts:
    myHalfadder1 HALFADDER, myHalfadder2 HALFADDER, myOr OR
;

//2. wire them up
Wires :
    in1 -> myHalfadder1.in1, in2 -> myHalfadder1.in2,
    carryIn -> myHalfadder2.in1, myHalfadder1.out -> myHalfadder2.in2, myHalfadder2.out -> out,
    myHalfadder1.carry -> myor.in1, myHalfadder2.carry -> myOr.in2,
    myOr.out -> carryout
;
