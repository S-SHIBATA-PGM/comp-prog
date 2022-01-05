import fs = require("fs");

class Solver
{
    arr: string[];
    line: string[];

    A: number;
    B: number;
    AB: number;
    input: string;

    constructor()
    {
        this.input = fs.readFileSync("/dev/stdin", "utf8");
        this.line = this.input.split("\n");
        this.arr = this.line[0].split(" ");
        this.A = parseInt(this.arr[0], 10);
        this.B = parseInt(this.arr[1], 10);
        this.AB = this.A + this.B;
    }

    solve()
    {
        if (15 <= this.AB && 8 <= this.B)
        {
            console.log(1);
        }
        else if (10 <= this.AB && 3 <= this.B)
        {
            console.log(2);
        }
        else if (3 <= this.AB)
        {
            console.log(3);
        }
        else
        {
            console.log(4);
        }
        return 0;
    }
}

const s = new Solver();
s.solve();
