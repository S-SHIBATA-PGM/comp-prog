import fs = require("fs");

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
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
    }

    solve()
    {
        console.log((1 - this.B / this.A) * 100);
        return 0;
    }
}

const s = new Solver();
s.solve();

