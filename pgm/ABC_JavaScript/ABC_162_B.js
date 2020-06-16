"use strict";
function calc(n, N) {
    const qt = Math.floor(N / n);
    return (Math.floor((n + qt * n) * qt / 2));
}
function main(input) {
    const N = parseInt(input.replace("\n", ""));
    console.log(calc(1, N) - calc(3, N) - calc(5, N) + calc(15, N));
    return;
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
