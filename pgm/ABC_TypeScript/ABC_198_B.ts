import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    line: string[];

    N: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = this.line[0].replace(/0+$/, "");
    }

    solve()
    {
        const half = this.N.length / 2 | 0;
        const lng = this.N.length - 1;
        let flg = true;
        for (let i = 0; i < half; i++)
        {
            if (this.N[i] !== this.N[lng - i])
            {
                flg = false;
                break;
            }
        }
        console.log(flg ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
