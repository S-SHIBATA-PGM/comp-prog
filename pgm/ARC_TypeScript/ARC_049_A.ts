import fs = require('fs');

class Solver
{
    private input, S: string;
    private A, B, C, D: number;

    const dq = "\"";

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        var lines = this.input.split('\n');
        var lines1 = lines[1].split(' ');

        this.S = lines[0];
        this.A = parseInt(lines1[0]);
        this.B = parseInt(lines1[1]);
        this.C = parseInt(lines1[2]);
        this.D = parseInt(lines1[3]);
    }

    Solve()
    {
        for (var i = 0; i <= this.S.length; i++)
        {
            if (i == this.A || i == this.B || i == this.C || i == this.D)
            {
                process.stdout.write(this.dq);
            }
            if (i == this.S.length) break;
            process.stdout.write(this.S[i]);
        }
        console.log();
    }
}

var s = new Solver();
s.Solve();

