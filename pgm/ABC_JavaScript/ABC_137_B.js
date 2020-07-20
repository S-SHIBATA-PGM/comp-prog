"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const K = parseInt(arr[0]);
    const X = parseInt(arr[1]);
    let ans = []
    for (let i = X - K + 1; i < X + K; i++) ans.push(i);
    console.log(ans.join(" "));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));