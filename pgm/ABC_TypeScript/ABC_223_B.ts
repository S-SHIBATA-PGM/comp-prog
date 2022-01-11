import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    N: number;
    S: string;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.S = this.line[0];
        this.N = this.S.length;
        this.arr = new Array<string>(this.N).fill("");
    }

    solve()
    {
        this.S = this.S.repeat(2);

        for (let i = 0; i < this.N; i++)
        {
            this.arr[i] = this.S.slice(i, i + this.N);
        }

        this.arr.sort();

        console.log(this.arr[0]);
        console.log(this.arr[this.N - 1]);

        return 0;
    }
}

const s = new Solver();
s.solve();
