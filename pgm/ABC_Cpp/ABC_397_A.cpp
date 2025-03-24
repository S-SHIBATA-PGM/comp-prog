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

int main() {
    double N;
    cin >> N;
    const int high = 1;
    const int fever = 2;
    const int normal = 3;
    const double d_high = 38.0;
    const double d_normal = 37.5;
    if (N >= d_high + DBL_EPSILON) {
        cout << high << endl;
        return 0;
    } else if (N >= d_normal + DBL_EPSILON) {
        cout << fever << endl;
        return 0;
    } else {
        cout << normal << endl;
        return 0;
    }
    return 0;
}