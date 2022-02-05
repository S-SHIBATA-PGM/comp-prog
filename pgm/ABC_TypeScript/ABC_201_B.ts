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

    S: Array<string>;
    T: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.S = new Array<string>(this.N);
        this.T = new Array<number>(this.N);
        for (let i = 0; i < this.N; i++)
        {
            this.S[i] = this.fs.string();
            this.T[i] = this.fs.integer();
        }
    }

    solve()
    {
        const t
            = JSON.parse(JSON.stringify(this.T))
                .sort((pre: number, cur: number) => cur - pre);
        console.log(this.S[this.T.indexOf(t[1])]);
        return 0;
    }
}

const s = new Solver();
s.solve();
