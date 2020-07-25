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
    int n;
    cin >> n;
    vector<int> p (n, 0);
    REP (i, n) cin >> p[i];
    int ans = 0;
    FOR (i, 1, n - 1) {
        if (p[i - 1] < p[i] && p[i] < p[i + 1])
            ans++;
        else if (p[i + 1] < p[i] && p[i] < p[i - 1])
            ans++;
    }
    cout << ans << endl;
    return 0;
}