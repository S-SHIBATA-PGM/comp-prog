"use strict";
function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[0].split(" ");
    const a = parseInt(arr[0]), b = parseInt(arr[1]);
    console.log(a < b ? String(a).repeat(b) : String(b).repeat(a))
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
