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
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int T, X;
    cin >> T >> X;
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    int prev = zero;
    REP (t, T + one) {
        int curr;
        cin >> curr;
        if (t == 0) {
            cout << t << space << curr << yn;
            prev = curr;
        } else {
            if (abs (curr - prev) >= X) {
                cout << t << space << curr << yn;
                prev = curr;
            }
        }
    }
    return 0;
}