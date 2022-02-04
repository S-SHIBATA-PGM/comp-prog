import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class Solver
{
    A: number[];
    arr: string[];
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[1].split(" ");
        this.N = parseInt(this.line[0], 10);
        this.A
            = this.arr.map((str) => parseInt(str, 10))
                .sort((pre, cur) => pre - cur);
    }

    solve()
    {
        let flg = true;
        for (let i = 0; i < this.N; i++)
        {
            if (this.A[i] !== i + 1)
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
