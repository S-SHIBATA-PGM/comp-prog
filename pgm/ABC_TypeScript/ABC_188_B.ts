import fs = require("fs");

const NO: "No" = "No";
const YES: "Yes" = "Yes";

class FastScanner
{
    line: string[];
    index = 0;
    constructor()
    {
        this.line = fs.readFileSync("/dev/stdin", "utf8").split("\n");
    }
    next()
    {
        return this.line[this.index++];
    }
    bigint(s: string): BigInt
    {
        return BigInt(s);
    }
    integer(s: string): number
    {
        return parseInt(s, 10);
    }
    number(s: string): number
    {
        return Number(s);
    }
    intArray()
    {
        return this.next().split(" ").map((s) => this.integer(s));
    }
    numberArray()
    {
        return this.next().split(" ").map((s) => this.number(s));
    }
    stringArray()
    {
        return this.next().split(" ");
    }
}

class Solver
{
    fs: FastScanner;

    A: Array<number>;
    B: Array<number>;

    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.intArray()[0];
        this.A = this.fs.intArray();
        this.B = this.fs.intArray();
    }

    solve()
    {
        let num = 0;
        for (let i = 0; i < this.N; i++) num += this.A[i] * this.B[i];
        console.log(num ? NO : YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
