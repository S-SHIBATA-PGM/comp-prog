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
    int T;
    cin >> T;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    REP (i, T) {
        ll X1, Y1, R1, X2, Y2, R2;
        cin >> X1 >> Y1 >> R1 >> X2 >> Y2 >> R2;
        ll dx = X1 - X2;
        ll dy = Y1 - Y2;
        ll dxy2 = dx * dx + dy * dy;
        ll dr = R1 + R2;
        ll dr2 = dr * dr;
        ll df = R1 - R2;
        ll df2 = df * df;
        if (df2 <= dxy2 && dxy2 <= dr2) {
            cout << Yes << yn;
        } else {
            cout << No << yn;
        }
    }
    return 0;
}