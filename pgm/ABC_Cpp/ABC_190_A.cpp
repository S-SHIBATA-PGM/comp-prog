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
    int A, B, C;
    cin >> A >> B >> C;
    const int zero = 0U;
    const string Takahashi = "Takahashi";
    const string Aoki = "Aoki";
    if (C == zero) {
        cout << (A <= B ? Aoki : Takahashi) << endl;
    } else {
        cout << (B <= A ? Takahashi : Aoki) << endl;
    }
    return 0;
}