import fs = require('fs');

class Solver
{
    private input: string;
    private L, R:number;
    private l, r: Array<number>;;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        this.L = parseInt(this.input.split('\n')[0].split(' ')[0]);
        this.R = parseInt(this.input.split('\n')[0].split(' ')[1]);

        this.l = new Array(this.L);
        this.r = new Array(this.R);

        for (var i = 10; i < 41; i++)
        {
            this.l[i] = 0;
        }

        for (var i = 0; i < this.L; i++)
        {
            var tmp = parseInt(this.input.split('\n')[1].split(' ')[i]);
            this.l[tmp]++;
        }

        for (var i = 10; i < 41; i++)
        {
            this.r[i] = 0;
        }

        for (var i = 0; i < this.R; i++)
        {
            var tmp = parseInt(this.input.split('\n')[2].split(' ')[i]);
            this.r[tmp]++;
        }
    }

    Solve()
    {
        this.ans = 0;
        for (var x in this.l)
        {
            for (var y in this.r)
            {
                if (x !=0 && y!= 0 && x == y)
                {
                    this.ans += Math.min(this.l[x], this.r[y]);
                }
            }
        }
        console.log(this.ans);
    }
}

var s = new Solver();
s.Solve();

