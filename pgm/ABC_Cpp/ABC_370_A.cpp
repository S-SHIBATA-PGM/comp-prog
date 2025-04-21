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
    int L, R;
    cin >> L >> R;
    const int zero = 0;
    const int one = 1;
    const string Yes = "Yes";
    const string No = "No";
    const string Invalid = "Invalid";
    cout << (L == one && R == zero   ? Yes
             : L == zero && R == one ? No
                                     : Invalid)
         << endl;
    return 0;
}