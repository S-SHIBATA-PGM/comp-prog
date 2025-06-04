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
    if (a * 2 == b || a * 2 + 1 == b) {
        cout << Yes << endl;
    } else {
        cout << No << endl;
    }
    return 0;
}