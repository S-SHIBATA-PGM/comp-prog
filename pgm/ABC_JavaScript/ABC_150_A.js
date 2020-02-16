function main(input) {
    var arr = input.replace(/\r?\n/g, "").split(" ");
    const K = arr[0], X = arr[1];
    console.log(X <= K * 500 ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));