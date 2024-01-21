Inputs :in1, in2 ;
Outputs: out, carry ;

// 1. specify the components you want to use hereParts :
    myxor XOR, myAnd AND

//2. wire them up
Wires:
    in1 -> myAnd.in1, in2 -> myAnd.in2, 
    in1 -> myXor.in1, in2 -> myXor.in2, 
    myAnd.out -> carry, myXor.out -> out
;
