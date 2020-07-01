"use strict";
const zip = (...arrays) => {
    const length = Math.min(...arrays.map(arr => arr.length));
    return Array.from({ length }, (value, index) => arrays.map((array => array[index])));
};

function main(input) {
    const line = input.split("\n");
    const S = line[0];
    const T = line[1];
    let ans = 0;
    let z = zip(S, T);
    for (let idx in z) if (z[idx][0] !== z[idx][1]) ans++;
    console.log(ans);
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));