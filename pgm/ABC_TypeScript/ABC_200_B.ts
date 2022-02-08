import fs = require("fs");

const NUM = BigInt(200);
const SCALE = BigInt(1000);

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
        let ans = BigInt(this.N);
        for (let i = 0; i < this.K; i++)
        {
            if (!(ans % NUM)) ans = ans / NUM;
            else ans = ans * SCALE + NUM;
        }
        console.log(ans.toString());
        return 0;
    }
}

const s = new Solver();
s.solve();
