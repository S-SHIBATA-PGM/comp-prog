function main(input) {
    const args = input.split(" ");
    const H = args[0], A = args[1];
    console.log(H % A ? (H / A | 0) + 1 : H / A);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));