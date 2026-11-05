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
    int N;
    cin >> N;
    vector<int> L (N);
    REP (i, N) {
        cin >> L[i];
    }
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    int from = -one;
    REP (i, N) {
        if (L[i] == one) {
            from = i + one;
            break;
        }
    }
    int to = -one;
    for (int i = N - one; i >= zero; i--) {
        if (L[i] == one) {
            to = i + one;
            break;
        }
    }
    cout << to - from << yn;
    return 0;
}