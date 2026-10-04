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
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    int H, W;
    cin >> H >> W;
    vector<string> grid (H);
    REP (y, H) {
        cin >> grid[y];
    }
    int total = 0;
    REP (y1, H) {
        FOR (y2, y1, H) {
            REP (x1, W) {
                FOR (x2, x1, W) {
                    bool is_symmetric = true;
                    FOR (x, x1, x2 + one) {
                        FOR (y, y1, y2 + one) {
                            int oppY = y2 - (y - y1);
                            int oppX = x2 - (x - x1);
                            if (grid[y][x] != grid[oppY][oppX]) {
                                is_symmetric = false;
                                break;
                            }
                        }
                        if (!is_symmetric)
                            break;
                    }
                    if (is_symmetric) {
                        total++;
                    }
                }
            }
        }
    }
    cout << total << yn;
    return 0;
}