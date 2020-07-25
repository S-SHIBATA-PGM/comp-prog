"use strict";
function main(input) {
    const line = input.split("\n");
    let arr = line[0].split(" ");
    const N = parseInt(arr[0]);
    const D = parseInt(arr[1]);
    let X = [];
    for (let i = 1; i < N + 1; i++) X.push(line[i].split(" ").map(Number));
    let ans = 0;
    for (let i = 0; i < N; i++) {
        for (let j = i + 1; j < N; j++) {
            let num = 0;
            for (let k = 0; k < D; k++)
                num += Math.pow((X[j][k] - X[i][k]), 2);
            if (Number.isInteger(Math.sqrt(num))) ans++;
        }
    }
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));