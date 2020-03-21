"use strict";
function main(input) {
    var line = input.split(/\r?\n/g);
    var arr = line[0].split(" ");
    const H = arr[0], N = arr[1];
    var A = line[1].split(" ");
    var accum = 0;
    for (var i = 0; i < A.length; i++)
        accum += parseInt(A[i]);
    console.log(accum < H ? "No" : "Yes");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
