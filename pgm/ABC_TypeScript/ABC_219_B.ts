import fs = require("fs");

class Solver
{
    S: string[];
    T: number[];
    arr: string[];
    line: string[];

    ans: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line.slice(0, 3);
        this.T = this.line[3].split("").map((str) => parseInt(str, 10) - 1);
        this.ans = "";
    }

    solve()
    {
        for (let i = 0, lng = this.T.length; i < lng; i++)
        {
            this.ans += this.S[this.T[i]];
        }

        console.log(this.ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
