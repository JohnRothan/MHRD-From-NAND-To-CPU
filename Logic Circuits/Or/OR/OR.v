Inputs: in1, in2;
Outputs: out;

//1. specify the components you want to use here
Parts :
    myNand NAND, myNot1 NOT, myNot2 NOT
;

//2. wire them up
Wires :
    in1 -> myNot1.in, myNot1.out -> myNand.in1, 
    in2 -> myNot2.in, myNot2.out -> myNand.in2, 
    myNand.out -> out
;
