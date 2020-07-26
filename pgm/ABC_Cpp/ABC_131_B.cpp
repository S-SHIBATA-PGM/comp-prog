// (N * (L + (L + N - 1))) / 2
// (N * (2 * L + N - 1)) / 2
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
    int N, L;
    cin >> N >> L;
    int ans = (N * (L + (L + N - 1))) / 2;
    if (0 < L)
        ans -= L;
    else if (L + N - 1 < 0)
        ans -= L + N - 1;
    cout << ans << endl;
    return 0;
}