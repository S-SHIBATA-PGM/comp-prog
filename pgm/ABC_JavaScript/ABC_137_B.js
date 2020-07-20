"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const K = parseInt(arr[0]);
    const X = parseInt(arr[1]);
    let sp = "";
    for (let i = X - K + 1; i < X + K; i++) {
        process.stdout.write(sp);
        process.stdout.write(String(i));
        sp = " ";
    }
    console.log();
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));