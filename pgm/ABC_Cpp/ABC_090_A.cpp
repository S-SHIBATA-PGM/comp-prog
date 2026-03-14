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
    string c1, c2, c3;
    cin >> c1 >> c2 >> c3;
    const int one = 1;
    const int two = 2;
    const int zero = 0;
    cout << string ({c1.at (zero), c2.at (one), c3.at (two)}) << endl;
    return 0;
}