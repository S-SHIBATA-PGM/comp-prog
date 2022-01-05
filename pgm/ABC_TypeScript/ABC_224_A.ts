import fs = require("fs");

const er: string = "er";
const ist: string = "ist";

class Solver
{
    line: string[];

    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
    }

    solve()
    {
        console.log(er === this.S.slice(-er.length) ? er : ist);
        return 0;
    }
}

const s = new Solver();
s.solve();
