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
    int N, M;
    cin >> N >> M;
    constexpr string_view period = ".";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int ten = 10;
    constexpr int twenty = 20;
    constexpr int zero = 0;
    vector<int> cnt (M, zero);
    vector<int> sz (M, zero);
    REP (i, N) {
        int A, B;
        cin >> A >> B;
        cnt[A - one] += one;
        sz[A - one] += B;
    }
    REP (i, M) {
        int qt = sz[i] / cnt[i];
        int rem = sz[i] % cnt[i];
        cout << qt << period;
        REP (k, twenty) {
            rem *= ten;
            cout << rem / cnt[i];
            rem %= cnt[i];
        }
        cout << yn;
    }
    return 0;
}