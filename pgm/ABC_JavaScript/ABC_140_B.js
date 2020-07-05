"use strict";
function main(input) {
    const line = input.split("\n");
    const N = parseInt(line[0]);
    const A = line[1].split(" ").map(Number);
    const B = line[2].split(" ").map(Number);
    const C = line[3].split(" ").map(Number);
    let ans = B.reduce((pre, cur) => pre + cur, 0);
    for (let i = 1; i < N; i++) if (A[i] === A[i - 1] + 1) ans += C[A[i - 1] - 1];
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));