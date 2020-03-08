#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int A, B, C;
    cin >> A >> B >> C;
    bool flg = false;
    if (A == B && B != C)
        flg = true;
    else if (B == C && C != A)
        flg = true;
    else if (C == A && A != B)
        flg = true;
    cout << (flg ? "Yes" : "No") << endl;
    return 0;
}
