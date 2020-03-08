#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

const int NUM = 3;
const int MAX_N = 100;

bool check (array<int, NUM>& ty, const array<int, MAX_N> xy, const int n) {
    bool flg = false;
    ty[xy[n]]++;
    if (ty[xy[n]] == NUM) flg = true;
    return flg;
}

bool check_naname (array<int, 2>& nnm, const array<int, MAX_N> y,
                   const array<int, MAX_N> x, const int n) {
    bool flg = false;
    if (y[n] == x[n]) {
        nnm[0]++;
        if (nnm[0] == NUM) flg = true;
    }
    if (y[n] == NUM - x[n] - 1) {
        nnm[1]++;
        if (nnm[1] == NUM) flg = true;
    }
    return flg;
}

int main() {
    array<int, MAX_N> y, x;
    y.fill (-1);
    x.fill (-1);
    REP (i, NUM) REP (j, NUM) {
        int cur;
        cin >> cur;
        cur--;
        y[cur] = i;
        x[cur] = j;
    }
    int N;
    cin >> N;
    array<int, NUM> tate, yoko;
    array<int, 2> naname;
    tate.fill (0);
    yoko.fill (0);
    naname.fill (0);
    bool flg = false;
    REP (i, N) {
        int cur;
        cin >> cur;
        cur--;
        if (y[cur] == -1) continue;
        flg = check (yoko, y, cur);
        if (flg) break;
        flg = check (tate, x, cur);
        if (flg) break;
        flg = check_naname (naname, y, x, cur);
        if (flg) break;
    }

    if (flg) {
        cout << "Yes" << endl;
    } else {
        cout << "No" << endl;
    }
    return 0;
}
