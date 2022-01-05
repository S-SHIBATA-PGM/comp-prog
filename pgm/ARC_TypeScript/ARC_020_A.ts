import fs = require('fs');

class Solver
{
    private input: string;
    private A, B:number;

    const Ant = "Ant";
    const Bug = "Bug";
    const Draw = "Draw";

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');

        this.A = parseInt(this.input.split('\n')[0].split(' ')[0]);
        this.B = parseInt(this.input.split('\n')[0].split(' ')[1]);
    }

    Solve()
    {
        console.log(
            Math.abs(this.A) < Math.abs(this.B) ? this.Ant :
                Math.abs(this.B) < Math.abs(this.A) ? this.Bug : this.Draw);
    }
}

var s = new Solver();
s.Solve();

