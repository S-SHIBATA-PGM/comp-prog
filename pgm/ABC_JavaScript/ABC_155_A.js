function main(input) {
    var arr = input.replace(/\r?\n/g, "").split(" ");
    const A = parseInt(arr[0]), B = parseInt(arr[1]), C = parseInt(arr[2]);
    if (A == B && B == C) console.log("No");
    else console.log(arr.some(v => v == (A ^ B ^ C)) ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));