import fs = require("fs");

class Solver
{
    A: number[];
    arr: string[];
    bools: Array<boolean>;
    line: string[];

    N: number;
    X: number;
    ans: number = 0;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.N = parseInt(this.arr[0], 10);
        this.X = parseInt(this.arr[1], 10) - 1;
        this.A = this.line[1].split(" ").map((str) => parseInt(str, 10) - 1);
        this.bools = new Array(this.N).fill(false);
    }

    solve()
    {
        let friend = this.X;
        while (!this.bools[friend])
        {
            this.ans++;
            this.bools[friend] = !this.bools[friend];
            friend = this.A[friend];
        }
        console.log(this.ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
