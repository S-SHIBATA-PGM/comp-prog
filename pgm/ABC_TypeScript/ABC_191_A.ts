import fs = require("fs");

const No: string = "No";
const Yes: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    V: number;
    T: number;
    S: number;
    D: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.V = parseInt(this.arr[0], 10);
        this.T = parseInt(this.arr[1], 10);
        this.S = parseInt(this.arr[2], 10);
        this.D = parseInt(this.arr[3], 10);
    }

    solve()
    {
        console.log(
            this.V * this.T <= this.D && this.D <= this.V * this.S ? No : Yes);
        return 0;
    }
}

const s = new Solver();
s.solve();
