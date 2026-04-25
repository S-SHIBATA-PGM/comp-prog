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
    int x;
    cin >> x;
    const string ABC = "ABC";
    const string ARC = "ARC";
    const int one_thousand_two_hundred = 1200;
    cout << (x < one_thousand_two_hundred ? ABC : ARC) << endl;
    return 0;
}