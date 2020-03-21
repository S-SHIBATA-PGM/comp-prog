"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    const A = line[1].split(" ").map(Number);
    let flg = true;
    for (let i in A)
        if (!(A[i] % 2) && A[i] % 3 && A[i] % 5) {
            flg = false;
            break;
        }
    console.log(flg ? "APPROVED" : "DENIED");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));