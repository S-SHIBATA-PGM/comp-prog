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
    double A, B, C, X;
    cin >> A >> B >> C >> X;
    const double one = 1.0;
    const double zero = 0.0;
    const int twelve = 12;
    if (A >= X) {
        cout << fixed << setprecision (twelve) << one << endl;
    } else if (B >= X) {
        cout << fixed << setprecision (twelve) << C / (B - A) << endl;
    } else {
        cout << fixed << setprecision (twelve) << zero << endl;
    }
    return 0;
}