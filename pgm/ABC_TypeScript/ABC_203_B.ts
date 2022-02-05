import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    K: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.K = parseInt(this.arr[1], 10);
    }

    solve()
    {
        let ans: number = 0;
        for (let i = 0; i < this.N; i++)
        {
            ans += (i + 1) * 100 * this.K + (1 + this.K) * this.K / 2;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
