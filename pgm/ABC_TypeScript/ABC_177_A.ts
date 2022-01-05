import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    D: number;
    T: number;
    S: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.D = parseInt(this.arr[0], 10);
        this.T = parseInt(this.arr[1], 10);
        this.S = parseInt(this.arr[2], 10);
    }

    solve()
    {
        console.log(this.D / this.S <= this.T ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
