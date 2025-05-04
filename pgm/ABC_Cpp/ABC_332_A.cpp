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
    int N, S, K;
    cin >> N >> S >> K;
    int P[N], Q[N];
    REP (i, N) {
        cin >> P[i] >> Q[i];
    }
    int price = 0;
    REP (i, N) {
        price += P[i] * Q[i];
    }
    cout << (price < S ? price + K : price) << endl;
    return 0;
}