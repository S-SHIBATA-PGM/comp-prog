"use strict";
function main(input) {
    const line = input.split("\n");
    const S = line[0];
    const T = line[1];
    let z = zip(S, T);
    let ans = 0;
    for (let val of z) if (val[0] === val[1]) ans++;
    console.log(ans);
    return;
};
const zip = (...arrays) => {
    const length = Math.min(...arrays.map(arr => arr.length));
    return Array.from({ length }, (value, index) => arrays.map((array => array[index])));
};
main(require('fs').readFileSync('/dev/stdin', 'utf8'));