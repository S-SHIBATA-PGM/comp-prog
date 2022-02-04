import fs = require("fs");

class Solver
{
    A: number[];
    arr: string[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[1].split(" ");
        this.N = parseInt(this.line[0], 10);
        this.A
            = this.arr.map(
                (str) => parseInt(str, 10) > 10 ? parseInt(str, 10) - 10 : 0);
    }

    solve()
    {
        console.log(this.A.reduce((pre, cur) => pre + cur));
        return 0;
    }
}

const s = new Solver();
s.solve();
