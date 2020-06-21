"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const S = arr[0];
    const T = arr[1];
    console.log(T + S);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));