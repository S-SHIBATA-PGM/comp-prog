import fs = require("fs");

class Solver
{
    arr: string[];
    dice: number[] = [0, 0, 0, 0, 0, 0];
    line: string[];

    input: string;

    A: number;
    B: number;
    C: number;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.C = parseInt(this.arr[2], 10);
        this.dice[--this.A]++;
        this.dice[--this.B]++;
        this.dice[--this.C]++;
    }

    solve()
    {
        const st = new Set([this.A, this.B, this.C]);
        let num = 0;
        for (let i = 0; i < 6; i++)
        {
            if (this.dice[i] === 1 || this.dice[i] === 3)
            {
                num = i + 1;
            }
        }
        console.log(st.size === 3 ? 0 : num);
        return 0;
    }
}

const s = new Solver();
s.solve();
