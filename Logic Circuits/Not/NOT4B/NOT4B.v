Inputs : in[4];
outputs: out[4];

//1. specify the components you want to use here
Parts:
    myNot1 NOT, myNot2 NOT, myNot3 NOT, myNot4 NOT
;

//2. wire them up
Wires:
    in[1] -> myNot1.in, myNot1.out -> out[1],
    in[2] -> myNot2.in, myNot2.out -> out[2],
    in[3] -> myNot3.in, myNot3.out -> out[3],
    in[4] -> myNot4.in, myNot4.out -> out[4]
;