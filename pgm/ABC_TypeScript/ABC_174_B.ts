import fs = require("fs");

const EPS:number = 1e-10;
const MAX_N:number = 101;

// 誤差を考慮した足し算
function add(a: number, b: number): number
{
    if (Math.abs(a + b) < EPS * (Math.abs(a) + Math.abs(b))) return 0;
    return a + b;
}

// 二次元ベクトル構造体
class P
{
    x: number;
    y: number;

    constructor(x: number, y: number)
    {
        this.x = x;
        this.y = y;
    }

    add(p: P): P
    {
        return new P(add(this.x, p.x), add(this.y, p.y));
    }

    subtract(p: P): P
    {
        return new P(add(this.x, -p.x), add(this.y, -p.y));
    }

    multiply(d: number): P
    {
        return new P(this.x * d, this.y * d);
    }

    // 内積
    dot(p: P): number
    {
        return add(this.x * p.x, this.y * p.y);
    }

    // 外積
    det(p: P): number
    {
        return add(this.x * p.y, -this.y * p.x);
    }
}

// 距離の二乗
function dist(p: P, q: P): number
{
    return (p.subtract(q)).dot(p.subtract(q));
}

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

    X: Array<number>;
    Y: Array<number>;
    ps: P[] = new Array<P>(MAX_N);

    D: number;
    N: number;

    constructor()
    {
        this.fs = new FastScanner();
        this.N = this.fs.integer();
        this.D = this.fs.integer();
        this.X = new Array<number>(this.N);
        this.Y = new Array<number>(this.N);
        for (let i = 0; i < this.N; i++)
        {
            this.X[i] = this.fs.integer();
            this.Y[i] = this.fs.integer();
        }
    }

    solve()
    {
        let ans = 0;
        const mnx
            = this.X
                .reduce((pre, cur) => pre < cur ? pre : cur) < 0
                ? this.X.reduce((pre, cur) => pre < cur ? pre : cur) : 0;
        const mny
            = this.Y
                .reduce((pre, cur) => pre < cur ? pre : cur) < 0
                ? this.Y.reduce((pre, cur) => pre < cur ? pre : cur) : 0;

        for (let i = 0; i < this.N; i++)
        {
            this.ps[i] = new P(this.X[i] - mnx, this.Y[i] - mny);
            if (dist(new P(0 - mnx, 0 - mny), this.ps[i])
                <= Math.pow(this.D, 2))
            {
                ans++;
            }
        }

        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
