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
    string C;
    cin >> C;
    const string Won = "Won";
    const string Lost = "Lost";
    const int one = 1U;
    const int two = 2U;
    const int zero = 0U;
    if (C.at (zero) == C.at (one) && C.at (one) == C.at (two)) {
        cout << Won << endl;
    } else {
        cout << Lost << endl;
    }
    return 0;
}