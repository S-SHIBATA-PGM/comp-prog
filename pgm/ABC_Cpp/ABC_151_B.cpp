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
    int N, K, M;
    cin >> N >> K >> M;
    int A, accum;
    accum = 0;
    REP (i, N - 1) {
        cin >> A;
        accum += A;
    }
    int num = N * M - accum;
    if (num < 0) cout << 0 << endl;
    else if (num <= K)
        cout << num << endl;
    else
        cout << -1 << endl;
    return 0;
}
