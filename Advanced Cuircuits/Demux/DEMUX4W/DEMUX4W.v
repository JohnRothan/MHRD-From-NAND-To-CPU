Inputs: in, sel[2];
Outputs: out1, out2, out3, out4;

// 1. specify the components you want to use here
Parts:
    myNot1 NOT, myNot2 NOT, myAnd1 AND, myAnd2 AND, myAnd3 AND, myAnd4 AND,
    myAnd5 AND, myAnd6 AND, myAnd7 AND, myAnd8 AND
;

//2. wire them up
Wires:
    //out1
    in -> myAnd1.in1, sel[1] -> myNot1.in, myNot1.out -> myAnd1.in2,
    myAnd1.out -> myAnd2.in1, sel[2] ->myNot2.in, myNot2.out -> myAnd2.in2, myAnd2.out -> out1,
    //out2
    in -> myAnd3.in1, sel[1] -> myAnd3.in2,
    myAnd3. out -> myAnd4.ini，myNot2.out -> myAnd4.in2, myAnd4.out -> out2 ,
    //out3
    in -> myAnd5.in1，myNot1.out -> myAnd5.in2，myAnd5.out -> myAnd6.in1,sel[2]->myAnd6.in2,myAnd6.out ->out3,
    //out4
    in -> myAnd7.in1, sel[1] ->myAnd7.in2, myAnd7.out -> myAnd8.in1, sel[2]->myAnd8.in2, myAnd8.out ->out4
;