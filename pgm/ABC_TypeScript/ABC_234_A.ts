import fs = require("fs");

function f(x: number): number
{
    return x ** 2 + 2 * x + 3;
}

class Solver
{
    line: string[];

    t: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.t = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(f(f(f(this.t) + this.t) + f(f(this.t))));
        return 0;
    }
}

const s = new Solver();
s.solve();
