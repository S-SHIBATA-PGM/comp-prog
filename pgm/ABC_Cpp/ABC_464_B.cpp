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
    int H, W;
    cin >> H >> W;
    constexpr char sharp = '#';
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    int min_y = H;
    int max_y = -one;
    int min_x = W;
    int max_x = -one;
    vector<string> grid (H);
    REP (y, H) {
        cin >> grid[y];
        REP (x, W) {
            if (grid[y][x] == sharp) {
                min_y = min (min_y, y);
                max_y = max (max_y, y);
                min_x = min (min_x, x);
                max_x = max (max_x, x);
            }
        }
    }
    FOR (y, min_y, max_y + one) {
        cout << grid[y].substr (min_x, max_x - min_x + one) << yn;
    }
    return 0;
}