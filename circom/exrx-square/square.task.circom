pragma circom 2.1.4;

template SquareNTimes (n) {
    signal input base;
    signal output result;
    
    signal square[n+1];
    square[0] <== base;
    for(var i =0; i < n; i++) {
        // constraint 1
        square[i+1] <== square[i]**2;
    }
    // constraint 2
    result <== square[n];
}

component main { public [ base ] } = SquareNTimes(2);


/* INPUT = {
    "base": "3"
} */
