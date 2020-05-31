"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = arr[0] * 1;
    const K = arr[1] * 1;
    let A = Array(N);
    A.fill(1);
    for (let i = 1; i < 2 * K; i++) {
        const d = line[i] * 1;
        arr = line[++i].split(" ").map(Number);
        for (let j = 0; j < arr.length; j++) {
            A[--arr[j]] = 0;
        }
    }
    console.log(A.reduce((Ai, x) => Ai + x));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));