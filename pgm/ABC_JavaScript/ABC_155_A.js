function main(input) {
    var arr = input.replace(/\r?\n/g, "").split(" ");
    const A = arr[0], B = arr[1], C = arr[2];
    var flg = false;
    if (A == B && B != C) flg = true;
    if (B == C && C != A) flg = true;
    if (C == A && A != B) flg = true;
    if (flg) console.log("Yes");
    else console.log("No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));