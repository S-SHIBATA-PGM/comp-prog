import fs = require("fs");

class Solver
{
    line: string[];

    x: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.x = parseInt(this.line[0], 10);
    }

    solve()
    {
        console.log(Number(!this.x));
        return 0;
    }
}

const s = new Solver();
s.solve();
