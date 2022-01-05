import fs = require("fs");

const No: string = "No";
const Yes: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    A: number[];
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = this.arr.map((str) => parseInt(str, 10)).sort((a, b) => a - b);
    }

    solve()
    {
        console.log(this.A[1] - this.A[0] === this.A[2] - this.A[1] ? Yes : No);
        return 0;
    }
}

const s = new Solver();
s.solve();
