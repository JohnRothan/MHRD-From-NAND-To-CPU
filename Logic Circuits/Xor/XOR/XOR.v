Inputs: in1, in2;
Outputs: out;

//1. specify the components you want to use here
Parts:
    myNand1 NAND,myNand2 NAND,myNand3 NAND, myNand4 NAND
;

//2. wire them up
Wires:
    inl -> myNand1.in1, in1 ->myNand2.in1, 
    in2-> myNand2.in2, in2->myNand3.in1,
    myNand2.out -> myNand1.in2, myNand2.out -> myNand3.in2, 
    myNand1.out -> myNand4.in1, myNand3.out -> myNand4.in2,
    myNand4.out ->out
;
