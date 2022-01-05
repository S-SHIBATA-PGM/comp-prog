import fs = require("fs");

class Solver
{
    S: number[];
    line: string[];

    N: number;
    input: string;
    ub: number = 1000;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
        this.S = this.line[1].split(" ").map((str) => parseInt(str, 10));
    }

    solve()
    {
        let ans = 0;
        for (let i = 0; i < this.N; i++)
        {
            let flg = false;
            for (let a = 1; a <= this.ub; a++)
            {
                for (let b = 1; b <= this.ub; b++)
                {
                    const area = 4 * a * b + 3 * a + 3 * b;
                    if (area === this.S[i])
                    {
                        flg = true;
                        break;
                    }
                    else if (this.ub < area)
                    {
                        break;
                    }
                }
                if (flg) break;
            }
            if (!flg) ans++;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
