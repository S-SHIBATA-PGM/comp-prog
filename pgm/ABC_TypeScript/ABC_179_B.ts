import fs = require("fs");

const NO: "No" = "No";
const OUT: 3 = 3;
const YES: "Yes" = "Yes";

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

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
    }

    solve()
    {
        let flg = false;
        let num = 0;
        for (let i = 0; i < this.N; i++)
        {
            const D1 = this.fs.integer();
            const D2 = this.fs.integer();
            if (D1 === D2) num++;
            else num = 0;
            if (OUT <= num)
            {
                flg = true;
                break;
            }
        }
        console.log(flg ? YES : NO);
        return 0;
    }
}

const s = new Solver();
s.solve();
