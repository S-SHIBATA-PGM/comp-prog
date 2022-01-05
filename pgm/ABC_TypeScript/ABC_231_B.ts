import fs = require("fs");

class Solver
{
    mp: {[key: string]: number} = {};
    S: string[];
    line: string[];

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
            if (!this.mp.hasOwnProperty(this.S[i]))
            {
                this.mp[this.S[i]] = 0;
            }

            this.mp[this.S[i]]++;

            if (this.maxvotes < this.mp[this.S[i]])
            {
                this.ans = this.S[i];
                this.maxvotes = this.mp[this.S[i]];
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
