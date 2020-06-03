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

const long INF = (long)1e18;

template<class T> void gc (T& x) {
    char c;
    int s = 0;
    x = 0;
    c = getchar_unlocked();
    if (c == '-')
        s = 1;
    else if ('0' <= c && c <= '9')
        x = c - '0';
    while (true) {
        c = getchar_unlocked();
        if (c < '0' || '9' < c)
            break;
        x = x * 10 + (c - '0');
    }
    if (s)
        x = -x;
}

int main() {
    int N;
    gc (N);
    vector<ll> A (N, 0);
    REP (i, N) gc (A[i]);
    auto itr = ALL (find, A, 0);
    if (itr != end (A)) {
        cout << 0 << endl;
        return 0;
    }
    long ans = 1L;
    for (auto&& Ai : A) {
        if (INF / Ai < ans) {
            cout << -1 << endl;
            return 0;
        }
        ans *= Ai;
    }
    cout << ans << endl;
    return 0;
}
