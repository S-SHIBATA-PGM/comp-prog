import fs = require("fs");

const INF: number = 1e9 + 7;

class Solver
{
    line: string[];

    S: string;
    T: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
        this.T = this.line[1];
    }

    solve()
    {
        let ans = INF;
        const lngs = this.S.length;
        const lngt = this.T.length;
        for (let i = 0; i <= lngs - lngt; i++)
        {
            let num = 0;
            for (let j = 0; j < lngt; j++)
            {
                if (this.S[i + j] !== this.T[j]) num++;
            }
            if (num < ans) ans = num;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
