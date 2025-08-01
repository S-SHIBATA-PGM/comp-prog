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
    int H, W, R, C;
    cin >> H >> W >> R >> C;
    const int one = 1;
    const int two = 2;
    if (one < R && R < H && one < C && C < W) {
        cout << two + two << endl;
    } else if ((R == one || R == H) && one < C && C < W) {
        cout << two + min (one, H - one) << endl;
    } else if (one < R && R < H && (C == one || C == W)) {
        cout << two + min (one, W - one) << endl;
    } else {
        cout << min (one, H - one) + min (one, W - one) << endl;
    }
    return 0;
}