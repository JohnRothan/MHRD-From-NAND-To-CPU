Inputs : in1, in2, sel;
Outputs: out;

//1. specify the components you want to use here
Parts :
    myNand1 NAND, myNand2 NAND, myNand3 NAND, myNot NOT
;

//2. wire them up
Wires:
    in1 -> myNand1.in1, in2 -> myNand2.in1, sel -> myNot.in, sel -> myNand2.in2,
    myNot.out -> myNand1.in2, myNand1.out -> myNand3.in1, myNand2.out -> myNand3.in2,
    myNand3.out ->out
;