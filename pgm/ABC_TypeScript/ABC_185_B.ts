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
    M: number;
    T: number;

    constructor()
    {
        this.fs = new FastScanner();
        [this.N, this.M, this.T] = this.fs.intArray();
        this.A = new Array<number>(this.M);
        this.B = new Array<number>(this.M);
        for (let i = 0; i < this.M; i++)
        {
            [this.A[i], this.B[i]] = this.fs.intArray();
        }
    }

    check(n: number)
    {
        return 0 < n;
    }

    charge(n: number, c: number)
    {
        n += c;
        n = this.N < n ? this.N : n;
        return n;
    }

    solve()
    {
        let flg = true;
        let n = this.N;
        n -= this.A[0];
        flg = this.check(n);
        if (!flg)
        {
            console.log(NO);
            return 0;
        }
        n = this.charge(n, this.B[0] - this.A[0]);
        for (let i = 1; i < this.M; i++)
        {
            n -= this.A[i] - this.B[i - 1];
            flg = this.check(n);
            if (!flg) break;
            n = this.charge(n, this.B[i] - this.A[i]);
        }
        if (!flg)
        {
            console.log(NO);
            return 0;
        }
        flg = this.check(n - this.T + this.B[this.B.length - 1]);
        if (!flg)
        {
            console.log(NO);
            return 0;
        }
        console.log(YES);
        return 0;
    }
}

const s = new Solver();
s.solve();
