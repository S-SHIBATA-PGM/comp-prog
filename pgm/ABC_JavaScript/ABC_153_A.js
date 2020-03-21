function main(input) {
    var arr = input.split(" ");
    const H = arr[0], A = arr[1];
    console.log(Math.ceil(H / A));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));