"use strict";
function main(input) {
    var line = input.split(/\r?\n/g);
    var arr = line[0].split(" ");
    const S = arr[0], T = arr[1];
    arr = line[1].split(" ")
    var A = parseInt(arr[0]), B = parseInt(arr[1]);
    const U = line[2];
    if (S == U) A--;
    else B--;
    console.log(A + " " + B);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));