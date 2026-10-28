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
    int N, M;
    cin >> N >> M;
    vector<string> grid (N);
    REP (i, N) {
        cin >> grid[i];
    }
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    unordered_set<string> sub_grid;
    REP (y, N - M + one) {
        REP (x, N - M + one) {
            string sub_str = "";
            REP (i, M) {
                REP (j, M) {
                    sub_str += grid[x + i][y + j];
                }
            }
            sub_grid.insert (sub_str);
        }
    }
    cout << sub_grid.size() << yn;
    return 0;
}