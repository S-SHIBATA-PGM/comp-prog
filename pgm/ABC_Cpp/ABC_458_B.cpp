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
    constexpr string_view blank = "";
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int drn = 4;
    constexpr int one = 1;
    constexpr int zero = 0;
    constexpr int dy[] = {one, zero, -one, zero};
    constexpr int dx[] = {zero, one, zero, -one};
    vector<vector<int>> data (H, vector<int> (W, zero));
    REP (y, H) {
        REP (x, W) {
            int cnt = zero;
            REP (k, drn) {
                int ny = y + dy[k];
                int nx = x + dx[k];
                if (ny < zero || ny >= H || nx < zero || nx >= W)
                    continue;
                cnt++;
            }
            data[y][x] = cnt;
            cout << data[y][x] << (x == W - one ? blank : space);
        }
        cout << yn;
    }
    return 0;
}