import fs = require("fs");

const Yes: string = "Yes";
const No: string = "No";

class Solver
{
    line: string[];

    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.X = parseInt(this.line[0]);
    }

    solve()
    {
        console.log(this.X ? this.X % 100 ? No : Yes : No);
        return 0;
    }
}

const s = new Solver();
s.solve();
