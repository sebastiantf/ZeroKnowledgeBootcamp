pragma circom 2.1.4;

template IsZero() {
  signal input in;

  signal inv;
  signal output out;

  // find inverse of in eg. in = 5, inv = 1/5
  // inverse * negative in + 1 must be zero eg. (1/5 * -5) + 1 = -1 + 1 = 0
  inv <-- in != 0 ? 1/in : 0;
  out <== inv * -in + 1;
  out === 0;
}

component main = IsZero();

/* INPUT = {
    "in": "5"
} */
