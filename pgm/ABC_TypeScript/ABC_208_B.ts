import fs = require("fs");

const INF: 1000000007 = 1000000007;

const FCT: Array<number> = new Array<number>(100002);

function factorial(x: number): void
{
    FCT[0] = 1;
    FCT[1] = 1;
    for (let i = 2; i <= x; i++)
    {
        FCT[i] = modmulti(FCT[i - 1], i);
    }
}

function modmulti(a: number, b: number): number
{
    let res: number = 0;
    let mod: number = a % INF;
    while (b > 0)
    {
        if ((b & 1) == 1)
        {
            res += mod;
            if (res > INF)
            {
                res -= INF;
            }
        }
        mod <<= 1;
        if (mod > INF)
        {
            mod -= INF;
        }
        b >>= 1;
    }
    return res;
}

class Solver
{
    line: string[];

    P: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.P = parseInt(this.line[0], 10);
        // 階乗テーブル作成
        factorial(10);
    }

    solve()
    {
        let ans = 0;
        for (let i = 11; 0 < i; i--)
        {
            if (FCT[i] <= this.P)
            {
                ans += this.P / FCT[i] | 0;
                this.P %= FCT[i];
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
