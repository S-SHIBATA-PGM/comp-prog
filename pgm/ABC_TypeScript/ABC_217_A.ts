import fs = require("fs");

const NO: String = "No";
const YES: String = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    S: string;
    T: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.S = this.arr[0];
        this.T = this.arr[1];
    }

    solve()
    {
        console.log(this.S < this.T ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
