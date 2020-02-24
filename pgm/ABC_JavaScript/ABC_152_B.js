function main(input) {
    var line = input.split(/\r?\n/g);
    var arr = line[0].split(" ");
    const a = arr[0], b = arr[1];
    var an = "";
    var bn = "";
    for (var i = 0; i < b; i++)
        an += a;
    for (var i = 0; i < a; i++)
        bn += b
    console.log(an < bn ? an : bn)
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
