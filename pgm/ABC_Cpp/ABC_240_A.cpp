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
    int a, b;
    cin >> a >> b;
    const string Yes = "Yes";
    const string No = "No";
    const int mod = 10;
    int prv = (a - 1) % mod;
    int nxt = (a + 1) % mod;
    if (prv == 0) {
        prv += mod;
    }
    if (nxt == 0) {
        nxt += mod;
    }
    cout << (b == prv || b == nxt ? Yes : No) << endl;
    return 0;
}