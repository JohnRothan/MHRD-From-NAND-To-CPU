Inputs: in1, in2 ;
Outputs: out;

//1. specify the conponents you want to use her
Parts :
    myNand NAND, myNot NOT
;

//2. wire them upwires:
    in1 -> myNand.in1, in2 -> myNand.in2,
    myNand.out -> myNot.in, myNot.out -> out
;
