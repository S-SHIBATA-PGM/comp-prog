import fs = require("fs");

const NO: string = "No";
const YES: string = "Yes";

class FastScanner
{
    inputs: string[];
    index = 0;
    constructor()
    {
        this.inputs = fs.readFileSync("/dev/stdin", "utf8").split(/ |\n/);
    }
    bigint(): BigInt
    {
        return BigInt(this.inputs[this.index++]);
    }
    integer(): number
    {
        return parseInt(this.inputs[this.index++], 10);
    }
    number(): number
    {
        return Number(this.inputs[this.index++]);
    }
    string()
    {
        return this.inputs[this.index++];
    }
}

class Solver
{
    fs: FastScanner;

    D: number;
    N: number;
    S: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.S = this.fs.integer();
        this.D = this.fs.integer();
    }

    solve()
    {
        let ans = NO;
        for (let i = 0; i < this.N; i++)
        {
            const X = this.fs.integer();
            const Y = this.fs.integer();
            if (X < this.S && this.D < Y)
            {
                ans = YES;
                break;
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
