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
    int N, C;
    cin >> N >> C;
    int T[N];
    REP (i, N) {
        cin >> T[i];
    }
    int pre = -C;
    int Candy = 0;
    REP (i, N) {
        if (T[i] - pre >= C) {
            Candy++;
            pre = T[i];
        }
    }
    cout << Candy << endl;
    return 0;
}