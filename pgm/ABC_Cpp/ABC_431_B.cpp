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
    int X, N;
    cin >> X >> N;
    vector<int> W (N);
    REP (i, N) {
        cin >> W[i];
    }
    int Q;
    cin >> Q;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    vector<bool> is_mounted (N, false);
    REP (i, Q) {
        int P;
        cin >> P;
        int idx = P - one;
        if (!is_mounted[idx]) {
            X += W[idx];
        } else {
            X -= W[idx];
        }
        is_mounted[idx] = !is_mounted[idx];
        cout << X << yn;
    }
    return 0;
}