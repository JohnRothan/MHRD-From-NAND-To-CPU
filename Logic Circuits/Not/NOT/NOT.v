Inputs: in;
outputs: out;

//1. specify the components you want to use here
Parts:
    myNandNAND
;

//2. wire them up
Wires:
    in -> myNand.in1, in -> myNand .in2, myNand.out -> out
;