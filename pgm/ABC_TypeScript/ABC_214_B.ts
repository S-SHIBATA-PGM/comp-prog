import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    S: number;
    T: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.S = parseInt(this.arr[0], 10);
        this.T = parseInt(this.arr[1], 10);
    }

    solve()
    {
        let ans = 0;
        for (let a = 0; a <= this.S; a++)
        {
            for (let b = 0; b <= this.S; b++)
            {
                for (let c = 0; c <= this.S; c++)
                {
                    if (a + b + c <= this.S && a * b * c <= this.T)
                    {
                        ans++;
                    }
                }
            }
        }
        console.log(ans);
        return 0;
    }
}

const s = new Solver();
s.solve();
