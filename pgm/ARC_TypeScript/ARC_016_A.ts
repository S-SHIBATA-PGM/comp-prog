import fs = require('fs');

class Solver
{
    private input: string;
    private N, M: number;

    const ONE = 1;
    const TWO = 2;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');
        this.N = parseInt(this.input.split('\n')[0].split(' ')[0]);
        this.M = parseInt(this.input.split('\n')[0].split(' ')[1]);
    }

    Solve()
    {
        console.log(this.M == this.ONE ? this.TWO : this.ONE);
        return 0;
    }
}

var s = new Solver();
s.Solve();

