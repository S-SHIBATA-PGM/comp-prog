// C + T = X
// 2 * C + 4 * T = Y
// T = X - C
// 2 * C + 4 * (X - C) = Y
// - 2 * C = Y - 4 * X
// C = 2 * X - Y / 2
// T = -X + Y / 2

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
    int X, Y;
    cin >> X >> Y;
    int C, T;
    C = 2 * X - Y / 2;
    T = -X + Y / 2;
    cout << (0 <= C && 0 <= T && C + T == X && 2 * C + 4 * T == Y ? "Yes"
                                                                  : "No")
         << endl;
    return 0;
}
