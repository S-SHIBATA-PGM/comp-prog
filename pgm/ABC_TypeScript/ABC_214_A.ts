import fs = require("fs");

class Solver
{
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0]);
    }

    solve()
    {
        if (1 <= this.N && this.N <= 125)
        {
            console.log(4);
        }
        else if (126 <= this.N && this.N <= 211)
        {
            console.log(6);
        }
        else
        {
            console.log(8);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
