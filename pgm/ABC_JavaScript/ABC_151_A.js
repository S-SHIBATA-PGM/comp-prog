function main(input) {
    var C = input.replace(/\r?\n/g, "");
    console.log(String.fromCharCode(C.charCodeAt() + 1));
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));