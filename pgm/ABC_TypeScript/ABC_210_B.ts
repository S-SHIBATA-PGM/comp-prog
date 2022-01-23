import fs = require("fs");

const TAKAHASHI: "Takahashi" = "Takahashi";
const AOKI: "Aoki" = "Aoki";

class Solver
{
    line: string[];

    N: number;
    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.S = this.line[1];
    }

    solve()
    {
        console.log(this.S.indexOf("1") % 2 ? AOKI : TAKAHASHI);
        return 0;
    }
}

const s = new Solver();
s.solve();
