import fs = require("fs");

class Solver
{
    mp: {[key: string]: number} = {};
    S: string[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.S = this.line.slice(1).filter((x) => x.trim() !== "");
        for (const idx in this.S)
        {
            if (this.S.hasOwnProperty(idx))
            {
                if (this.mp[this.S[idx]] === undefined)
                {
                    this.mp[this.S[idx]] = 0;
                }
                this.mp[this.S[idx]] += 1;
            }
        }
    }

    solve()
    {
        const maxvotes
            = Object.values(this.mp).reduce(
                (prev, curr) => Math.max(prev, curr));
        for (const idx in this.mp)
        {
            if (this.mp.hasOwnProperty(idx))
            {
                if (this.mp[idx] === maxvotes)
                {
                    console.log(idx);
                    break;
                }
            }
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
