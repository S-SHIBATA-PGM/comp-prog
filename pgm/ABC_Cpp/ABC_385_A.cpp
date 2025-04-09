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
    int ABC[3];
    REP (i, (int)(sizeof (ABC) / sizeof (int))) cin >> ABC[i];
    const string Yes = "Yes";
    const string No = "No";
    ALL (sort, ABC);
    if (ABC[0] == ABC[1] && ABC[1] == ABC[2]) {
        cout << Yes;
    } else if (ABC[0] + ABC[1] == ABC[2]) {
        cout << Yes;
    } else {
        cout << No;
    }
    cout << endl;
    return 0;
}