function main(input) {
    var line = input.replace(/\r?\n/g, "");
    console.log("x".repeat(line.length));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));