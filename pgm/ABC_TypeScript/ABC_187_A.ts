import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    A: number[];
    B: number[];
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = [...this.arr[0]].map((str) => parseInt(str, 10));
        this.B = [...this.arr[1]].map((str) => parseInt(str, 10));
    }

    solve()
    {
        console.log(
            Math.max(
                this.A.reduce((prev, curr) => prev + curr)
                , this.B.reduce((prev, curr) => prev + curr)));
        return 0;
    }
}

const s = new Solver();
s.solve();
