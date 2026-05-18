#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int A, B, C, D;
    cin >> A >> B >> C >> D;
    const string TAKAHASHI = "TAKAHASHI";
    const string AOKI = "AOKI";
    const string DRAW = "DRAW";
    cout << (B * C > A * D ? TAKAHASHI : B * C < A * D ? AOKI : DRAW) << endl;
    return 0;
}