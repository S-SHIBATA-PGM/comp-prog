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

double f (int x) {
    return pow (x, 2) + 2 * x + 3;
}

int main() {
    int t;
    cin >> t;
    cout << fixed << setprecision (0) << f (f (f (t) + t) + f (f (t))) << endl;
    return 0;
}