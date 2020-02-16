function main(input) {
    var arr = input.split(" ");
    const H = arr[0], A = arr[1];
    console.log(H % A ? (H / A | 0) + 1 : H / A);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));