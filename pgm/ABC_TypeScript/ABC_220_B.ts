import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    K: number;
    A: number;
    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[1].split(" ");
        this.K = parseInt(this.line[0]);
        this.A = parseInt(this.arr[0], this.K);
        this.B = parseInt(this.arr[1], this.K);
    }

    solve()
    {
        console.log(this.A * this.B);
        return 0;
    }
}

const s = new Solver();
s.solve();
