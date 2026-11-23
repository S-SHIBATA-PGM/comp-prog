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
    int X, Y;
    cin >> X >> Y;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int six = 6;
    constexpr int thirty_six = 36;
    constexpr int precision = 32;
    constexpr int zero = 0;
    int cnt = zero;
    FOR (a, one, six + one) {
        FOR (b, one, six + one) {
            int sum = a + b;
            int diff = abs(a - b);
            if (sum >= X || diff >= Y) {
                cnt++;
            }
        }
    }
    cout << fixed << setprecision(precision)
         << static_cast<long double>(cnt) / thirty_six << yn;
    return 0;
}