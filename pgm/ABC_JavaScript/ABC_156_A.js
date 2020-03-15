"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]), R = parseInt(arr[1]);
    console.log(10 <= N ? R : R + 100 * (10 - N));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));