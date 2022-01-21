import fs = require("fs");

class Solver
{
    line: string[];

    N: bigint;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = BigInt(this.line[0]);
    }

    solve()
    {
        let ans = 0;
        let i = 0;
        let num: bigint = BigInt(1);
        while (true)
        {
            if (this.N < num)
            {
                ans = i - 1;
                break;
            }
            num *= BigInt(2);
            i++;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
