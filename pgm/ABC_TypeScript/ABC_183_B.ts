import fs = require("fs");

const EPS:number = 1e-10;

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

    ps: P[] = new Array<P>(2);

    constructor()
    {
        this.fs = new FastScanner();
        this.ps[0] = new P(this.fs.integer(), this.fs.integer());
        this.ps[1] = new P(this.fs.integer(), -this.fs.integer());
    }

    solve()
    {
        const p = this.ps[1].subtract(this.ps[0]);
        console.log(this.ps[0].x - p.x * this.ps[0].y / p.y);
        return 0;
    }
}

const s = new Solver();
s.solve();

