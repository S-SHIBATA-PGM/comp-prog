import fs = require("fs");

class Solver
{
    line: string[];

    N: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0], 10);
    }

    solve()
    {
        let ans = 0;
        let i = 0;
        let num = 1;
        while (true)
        {
            if (this.N < num)
            {
                ans = i - 1;
                break;
            }
            num *= 2;
            i++;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
