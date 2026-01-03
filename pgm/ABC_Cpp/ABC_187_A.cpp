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
    string A, B;
    cin >> A >> B;
    const int one = 1U;
    const int two = 2U;
    const int zero = 0U;
    const char c_zero = '0';
    int SA = A.at (zero) - c_zero + A.at (one) - c_zero + A.at (two) - c_zero;
    int SB = B.at (zero) - c_zero + B.at (one) - c_zero + B.at (two) - c_zero;
    cout << max (SA, SB) << endl;
    return 0;
}