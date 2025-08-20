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
    const string space = " ";
    const int zero = 0;
    const int one = 1;
    const int two = 2;
    const int three = 3;
    int x[three];
    int y[three];
    for (int i = 0; i < three; i++) {
        cin >> x[i];
        cin >> y[i];
    }
    int pointX = x[zero];
    int pointY = y[zero];
    if (x[two] == x[zero]) {
        pointX = x[one];
    } else if (x[zero] == x[one]) {
        pointX = x[two];
    }
    if (y[two] == y[zero]) {
        pointY = y[one];
    } else if (y[zero] == y[one]) {
        pointY = y[two];
    }
    cout << pointX << space << pointY << endl;
    return 0;
}