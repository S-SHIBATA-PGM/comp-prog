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
    int N;
    cin >> N;
    vector<int> A (N, 0), B (N, 0), C (N - 1, 0);
    REP (i, N) cin >> A[i];
    REP (i, N) cin >> B[i];
    REP (i, N - 1) cin >> C[i];
    int ans = ALL (accumulate, B, 0);
    FOR (i, 1, N) if (A[i - 1] + 1 == A[i]) ans += C[A[i - 1] - 1];
    cout << ans << endl;
    return 0;
}