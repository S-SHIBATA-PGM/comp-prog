function main(input) {
    let line = input.split(/\r?\n/g);
    let arr = line[0].split(" ");
    const H = arr[0], N = arr[1];
    let A = line[1].split(" ");
    let accum = 0;
    for (let i in A)
        accum += parseInt(A[i]);
    console.log(accum < H ? "No" : "Yes");
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));
