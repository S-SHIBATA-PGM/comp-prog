import fs = require("fs");

const RANGE: 1000 = 1000;

class Solver
{
    A: number[];
    B: number[];
    line: string[];

    input: string;
    N: number;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.N = parseInt(this.line[0]);
        this.A = this.line[1].split(" ").map((str) => parseInt(str, 10));
        this.B = this.line[2].split(" ").map((str) => parseInt(str, 10));
    }

    solve()
    {
        const lst = new Array<number>(RANGE).fill(0);
        for (let i = 0; i < this.N; i++)
        {
            lst[this.A[i] - 1] += 1;
            lst[this.B[i]] -= 1;
        }
        for (let i = 1; i < RANGE; i++)
        {
            lst[i] += lst[i - 1];
        }
        let ans = 0;
        for (let i = 0; i < RANGE; i++)
        {
            if (lst[i] === this.N) ans += 1;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
