import fs = require("fs");

class Solver
{
    H: number[];
    arr: string[];
    line: string[];

    N: number;
    B: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[1].split(" ");
        this.N = parseInt(this.line[0], 10);
        this.H = this.arr.map((str) => parseInt(str, 10));
    }

    solve()
    {
        let ans = 0;
        for (let i = 0; i < this.N; i++)
        {
            if (ans < this.H[i]) ans = this.H[i];
            else break;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
