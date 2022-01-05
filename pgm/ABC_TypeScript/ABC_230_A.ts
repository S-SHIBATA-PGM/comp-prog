import fs = require("fs");

class Solver
{
    line: string[];

    A: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.A = parseInt(this.line[0]);
    }

    Solve()
    {
        console.log(42 <= this.A ? "AGC" + (this.A + 1 + "").padStart(3, "0") : "AGC" + (this.A + "").padStart(3, "0"));
        return 0;
    }
}

let s = new Solver();
s.Solve();

