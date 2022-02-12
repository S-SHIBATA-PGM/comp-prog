import fs = require("fs");

const O: "o" = "o";

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    S: string;
    X: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.X = parseInt(this.arr[1], 10);
        this.S = this.line[1];
    }

    solve()
    {
        let ans = this.X;
        for (let i = 0; i < this.N; i++)
        {
            if (O === this.S[i]) ans++;
            else ans = ans ? --ans : ans;
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
