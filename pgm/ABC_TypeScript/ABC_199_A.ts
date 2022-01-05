import fs = require("fs");

const No: string = "No";
const Yes: string = "Yes";

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    C: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.C = parseInt(this.arr[2], 10);
    }

    solve()
    {
        console.log(this.A ** 2 + this.B ** 2 < this.C ** 2 ? Yes : No);
        return 0;
    }
}

const s = new Solver();
s.solve();
