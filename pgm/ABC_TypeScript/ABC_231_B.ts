import fs = require("fs");

class Solver
{
    S: string[];
    line: string[];
    mp: Map<string, number> = new Map();

    N: number;
    ans: string = "";
    input: string;
    maxvotes: number = 0;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.S = this.line.slice(1);
        for (let i = 0, lng = this.S.length; i < lng; i++)
        {
            if (!this.mp.has(this.S[i]))
            {
                this.mp.set(this.S[i], 0);
            }

            this.mp.set(this.S[i], this.mp.get(this.S[i])! + 1);

            if (this.maxvotes < this.mp.get(this.S[i])!)
            {
                this.ans = this.S[i];
                this.maxvotes = this.mp.get(this.S[i])!;
            }
        }
    }

    solve()
    {
        console.log(this.ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
