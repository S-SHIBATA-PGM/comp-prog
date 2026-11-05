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
    constexpr char c_sharp = '#';
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int four = 4;
    constexpr int zero = 0;
    constexpr int drn = four;
    constexpr int dy[drn] = {one, zero, -one, zero};
    constexpr int dx[drn] = {zero, one, zero, -one};
    vector<string> grid (H);
    REP (y, H) {
        cin >> grid[y];
    }
    string is_filled (Yes);
    REP (y, H) {
        REP (x, W) {
            if (grid[y][x] != c_sharp) {
                continue;
            }
            int cnt = zero;
            REP (k, drn) {
                int ny = y + dy[k];
                int nx = x + dx[k];
                if (ny < zero || H <= ny || nx < zero || W <= nx) {
                    continue;
                }
                if (grid[ny][nx] == c_sharp) {
                    cnt++;
                }
            }
            if (cnt != two && cnt != four) {
                is_filled = No;
                break;
            }
        }
        if (is_filled == No) {
            break;
        }
    }
    cout << is_filled << yn;
    return 0;
}