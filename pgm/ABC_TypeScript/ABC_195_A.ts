import fs = require("fs");

const No: string = "No";
const Yes: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    M: number;
    H: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.M = parseInt(this.arr[0], 10);
        this.H = parseInt(this.arr[1], 10);
    }

    solve()
    {
        console.log(this.H % this.M ? No : Yes);
        return 0;
    }
}

const s = new Solver();
s.solve();
