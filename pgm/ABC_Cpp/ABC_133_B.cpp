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
    int N, D;
    cin >> N >> D;
    vector<vector<int>> X (N, vector<int> (D, 0));
    REP (i, N) REP (j, D) cin >> X[i][j];
    int ans = 0;
    REP (i, N) {
        FOR (j, i + 1, N) {
            int num = 0;
            REP (k, D) num += pow (X[j][k] - X[i][k], 2);
            double dbl = sqrt (num);
            if (dbl == floor (dbl))
                ans++;
        }
    }
    cout << ans << endl;
    return 0;
}