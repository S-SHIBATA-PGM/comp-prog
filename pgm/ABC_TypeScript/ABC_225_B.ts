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

    grp: number[];

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.grp = new Array(this.N).fill(0);
    }

    solve()
    {
        for (let i = 0; i < this.N - 1; i++)
        {
            this.grp[this.fs.integer() - 1]++;
            this.grp[this.fs.integer() - 1]++;
        }

        console.log(
            this.grp.reduce((prev, curr) => Math.max(prev, curr)) === this.N - 1
                ? YES
                : NO);

        return 0;
    }
}

const s = new Solver();
s.solve();
