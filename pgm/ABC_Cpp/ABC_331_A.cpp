#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f)(begin (ALL), end (ALL), ##__VA_ARGS__);                     \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int M, D, y, m, d;
    cin >> M >> D >> y >> m >> d;
    const char space = ' ';
    d++;
    if (d > D) {
        d -= D;
        m++;
    }
    if (m > M) {
        m -= M;
        y++;
    }
    cout << y << space << m << space << d << endl;
    return 0;
}