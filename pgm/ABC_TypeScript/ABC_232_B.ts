import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";
const NUM: number = "z".charCodeAt(0) - "a".charCodeAt(0) + 1;

class Solver
{
    line: string[];

    S: string;
    T: string;
    K: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
        this.T = this.line[1];
        this.K = this.T.charCodeAt(0) - this.S.charCodeAt(0);
        this.K += this.K < 0 ? NUM : 0;
    }

    solve()
    {
        let flg = false;

        for (let i = 1, ln = this.S.length; i < ln; i++)
        {
            let diff = this.T.charCodeAt(i) - this.S.charCodeAt(i);
            diff += diff < 0 ? NUM : 0;
            if (this.K !== diff)
            {
                flg = true;
            }
        }
        console.log(flg ? NO : YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
