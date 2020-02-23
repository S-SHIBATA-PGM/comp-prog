function main(input) {
    var line = input.split(/\r?\n/g);
    var arr = line[0].split(" ");
    const H = arr[0], N = arr[1];
    var A = line[1].split(" ").map(Number);
    var accum = 0
    A.forEach(Ai => {
        accum += Ai
    });
    console.log(1 < Math.ceil(H / accum) ? "No" : "Yes");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));