import fs = require('fs');

class Solver
{
    private input, S: string;
    private mp: Array<string>;

    constructor()
    {
        this.input = fs.readFileSync('/dev/stdin', 'utf8');
        this.S = this.input.split('\n')[0];

        this.mp = new Array();
        this.mp['O'] = '0';
        this.mp['D'] = '0';
        this.mp['I'] = '1';
        this.mp['Z'] = '2';
        this.mp['S'] = '5';
        this.mp['B'] = '8';
    }

    Solve()
    {
        for (var key in this.mp)
        {
            var regExp = new RegExp(key, "g");
            this.S = this.S.replace(regExp, this.mp[key]);
        }

        console.log(this.S);
    }
}

var s = new Solver();
s.Solve();

