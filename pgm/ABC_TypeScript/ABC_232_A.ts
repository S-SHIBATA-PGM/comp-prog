import fs = require("fs");

class Solver
{
    line: string[];

    a: number;
    b: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.a = parseInt(this.line[0].slice(0, 1));
        this.b = parseInt(this.line[0].slice(2));
    }

    Solve()
    {
        console.log(this.a * this.b);
        return 0;
    }
}

let s = new Solver();
s.Solve();

