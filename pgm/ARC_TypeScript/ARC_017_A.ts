import fs = require('fs');

class Solver
{
    private input: string;
    private N: number;

    const YES = "YES";
    const NO = "NO";

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');
        this.N = parseInt(this.input);
    }

    Solve()
    {
        console.log(isPrime(this.N) ? this.YES : this.NO);
        return 0;
    }

    function isPrime(x:number):bool
    {
        var flg = true;

        if (x == 1) flg = false;

        for (var i = 2; i < x; i++)
        {
            if (x % i == 0)
            {
                flg = false;
                break;
            }
        }
        return flg;
    }
}

var s = new Solver();
s.Solve();

