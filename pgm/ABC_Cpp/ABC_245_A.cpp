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
    int A, B, C, D;
    cin >> A >> B >> C >> D;
    const string Takahashi = "Takahashi";
    const string Aoki = "Aoki";
    if (A < C) {
        cout << Takahashi << endl;
    } else if (A > C) {
        cout << Aoki << endl;
    } else if (B <= D) {
        cout << Takahashi << endl;
    } else {
        cout << Aoki << endl;
    }
    return 0;
}