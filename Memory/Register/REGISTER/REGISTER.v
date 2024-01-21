Inputs: in, load ;
Outputs: out;

//1. specfiy the components you want to use here
Parts:
    myDff DFF, myMux MUX
;

//2. wire them up
Wires :
    in -> myMux.in2, load -> myMux.sel,
    myMux.out -> myDff.in, myDff.out -> out,
    myDff.out -> myMux.in1
;