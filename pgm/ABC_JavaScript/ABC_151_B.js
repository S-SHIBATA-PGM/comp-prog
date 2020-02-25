function main(input) {
    var line = input.split(/\r?\n/g);
    var arr = line[0].split(" ");
    const N = arr[0], K = arr[1], M = arr[2];
    arr = line[1].split(" ").map(Number);
    ans = N * M - arr.reduce((A, x) => A + x);
    console.log(ans < 0 ? 0 : K < ans ? -1 : ans);
}
main(require('fs').readFileSync('/dev/stdin', 'utf8'));