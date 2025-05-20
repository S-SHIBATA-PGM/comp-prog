#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f)(begin (ALL), end (ALL), ##__VA_ARGS__);                     \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int N, D;
    cin >> N >> D;
    int T[N];
    REP (i, N) {
        cin >> T[i];
    }
    const int no = -1;
    int diff[N];
    adjacent_difference (T, T + N, diff);
    auto itr = find_if (diff + 1, diff + N, [D] (int d) { return d <= D; });
    if (itr != diff + N) {
        cout << T[distance (diff, itr)] << endl;
    } else {
        cout << no << endl;
    }
    return 0;
}