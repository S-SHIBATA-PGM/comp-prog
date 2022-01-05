import fs = require("fs");

class Solver
{
    ab: string[];
    cd: string[];
    line: string[];

    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.ab = this.line[0].split(" ");
        this.cd = this.line[1].split(" ");
    }

    solve()
    {
        console.log(parseInt(this.ab[1], 10) - parseInt(this.cd[0], 10));
        return 0;
    }
}

const s = new Solver();
s.solve();
