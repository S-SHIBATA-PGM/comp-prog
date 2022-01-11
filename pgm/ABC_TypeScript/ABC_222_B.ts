import fs = require("fs");

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

    N: number;
    P: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.P = this.fs.integer();
    }

    solve()
    {
        let ans = 0;

        for (let i = 0; i < this.N; i++)
        {
            if (this.fs.integer() < this.P) ans++;
        }

        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
