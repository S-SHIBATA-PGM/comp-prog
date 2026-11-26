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
using i128 = __int128_t;

vector<string> rotate90 (const vector<string>& grid) {
    int n = static_cast<int> (grid.size());
    constexpr int one = 1;
    vector<string> rotated (n, string (n, '.'));
    REP (i, n) {
        REP (j, n) {
            rotated[j][n - one - i] = grid[i][j];
        }
    }
    return rotated;
}

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N;
    cin >> N;
    vector<string> S (N);
    REP (i, N) {
        cin >> S[i];
    }
    vector<string> T (N);
    REP (i, N) {
        cin >> T[i];
    }
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int four = 4;
    constexpr int zero = 0;
    int min_cost = INT_MAX;
    vector<string> curr = S;
    REP (k, four) {
        int cnt = zero;
        REP (i, N) {
            REP (j, N) {
                if (curr[i][j] != T[i][j]) {
                    cnt++;
                }
            }
        }
        int cost = k + cnt;
        min_cost = min (min_cost, cost);
        curr = rotate90 (curr);
    }
    cout << min_cost << yn;
    return 0;
}