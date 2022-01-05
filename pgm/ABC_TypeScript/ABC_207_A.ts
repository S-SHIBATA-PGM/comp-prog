import fs = require("fs");

class Solver
{
    abc: number[];
    arr: string[];
    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.abc = this.arr.map((str) => parseInt(str, 10)).sort();
    }

    solve()
    {
        console.log(
            this.abc.slice(-2).reduce((prev, curr) => prev + curr));
        return 0;
    }
}

const s = new Solver();
s.solve();
