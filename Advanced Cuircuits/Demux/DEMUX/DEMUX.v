Inputs: in, sel;
Outputs: out1, out2;

// 1. specify the components you want to use here
Parts :
    myAnd1 AND, myAnd2 AND, myNot NOT
;

//2. wire them up
Wires :
    sel -> myNot.in, sel -> myAnd2.in2, myNot.out -> myAnd1.in1, 
    in -> myAnd1.in2, in -> myAnd2.in1,
    myAnd1.out ->out1, myAnd2.out ->out2 
;
