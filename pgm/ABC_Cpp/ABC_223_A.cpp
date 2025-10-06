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
    int X;
    cin >> X;
    const int divisor = 100;
    const int zero = 0;
    const string Yes = "Yes";
    const string No = "No";
    if (X != zero && X % divisor == zero) {
        cout << Yes << endl;
    } else {
        cout << No << endl;
    }
    return 0;
}