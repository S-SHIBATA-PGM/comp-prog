import fs = require("fs");

const YES: "Yes" = "Yes";
const NO: "No" = "No";

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
        let cnt = 0;
        let flg = false;
        for (let i = 0, lng = this.S.length; i < lng; i++)
        {
            if (this.S[i] !== this.T[i])
            {
                if (0 < cnt)
                {
                    flg = true;
                    break;
                }
                else if (!flg && i === lng - 1)
                {
                    flg = true;
                    break;
                }
                else if (!flg
                    && this.S[i] === this.T[i + 1]
                    && this.S[i + 1] === this.T[i])
                {
                    flg = true;
                }
                else if (flg)
                {
                    flg = false;
                    cnt++;
                }
                else
                {
                    flg = true;
                    break;
                }
            }
        }
        console.log(flg ? NO : YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
