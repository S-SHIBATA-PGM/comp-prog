import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    A: number[];
    arr: string[];
    line: string[];

    N: number;
    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.X = parseInt(this.arr[1], 10);
        this.A = this.line[1].split(" ").map((str) => parseInt(str), 10);
    }

    solve()
    {
        console.log(
            this.A.reduce((prev, curr) => prev + curr) - (this.N / 2 | 0)
                <= this.X
                ? YES
                : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
