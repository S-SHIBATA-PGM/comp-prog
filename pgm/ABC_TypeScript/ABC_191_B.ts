import fs = require("fs");

class Solver
{
    A: Array<number>;
    arr: string[];
    line: string[];

    N: number;
    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.X = parseInt(this.arr[1], 10);
        this.A = this.line[1].split(" ").map((str) => parseInt(str), 10);
    }

    solve()
    {
        let ans = this.A[0] !== this.X ? String(this.A[0]) : "";
        for (let i = 1; i < this.N; i++)
        {
            if (this.A[i] !== this.X) ans += " " + String(this.A[i]);
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
