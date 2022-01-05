import fs = require("fs");

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
        if (this.S.charAt(0) === this.S.charAt(1)
            && this.S.charAt(1) === this.S.charAt(2))
        {
            console.log(1);
        }
        else if (this.S.charAt(0) !== this.S.charAt(1)
            && this.S.charAt(1) !== this.S.charAt(2)
            && this.S.charAt(2) !== this.S.charAt(0))
        {
            console.log(6);
        }
        else
        {
            console.log(3);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
