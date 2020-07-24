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
    vector<int> p (N, 0);
    REP (i, N) cin >> p[i];
    int cnt = 0;
    REP (i, N) if (p[i] != i + 1) cnt++;
    cout << (cnt <= 2 ? "YES" : "NO") << endl;
    return 0;
}