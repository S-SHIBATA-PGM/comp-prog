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

long calc (long n, long N) {
    return (n + N / n * n) * (N / n) / 2;
}

int main() {
    long N;
    cin >> N;
    cout << calc (1L, N) - calc (3L, N) - calc (5L, N) + calc (15L, N) << endl;
    return 0;
}
