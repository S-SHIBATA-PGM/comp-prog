import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0]);
        this.B = parseInt(this.arr[1]);
    }

    solve()
    {
        console.log(this.B <= 6 * this.A && this.A <= this.B ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
