function main(input) {
    var arr = input.replace(/\r?\n/g, "").split(" ");
    const N = arr[0], M = arr[1];
    console.log(N == M ? "Yes" : "No");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));