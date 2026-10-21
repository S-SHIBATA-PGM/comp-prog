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
    int H, W, N;
    cin >> H >> W >> N;
    constexpr string_view yn = "\n";
    constexpr int zero = 0;
    vector<vector<int>> A (H, vector<int> (W));
    REP (i, H) {
        REP (j, W) {
            cin >> A[i][j];
        }
    }
    vector<int> B (N);
    REP (i, N) {
        cin >> B[i];
    }
    int mx = numeric_limits<int>::min();
    REP (i, H) {
        int cnt = zero;
        REP (j, W) {
            REP (k, N) {
                if (A[i][j] == B[k]) {
                    cnt++;
                }
            }
        }
        mx = max (mx, cnt);
    }
    cout << mx << yn;
    return 0;
}