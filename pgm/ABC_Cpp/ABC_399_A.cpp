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
    string S, T;
    cin >> N >> S >> T;
    constexpr string_view yn = "\n";
    constexpr int zero = 0;
    int len = static_cast<int> (S.length());
    int cnt = zero;
    REP (i, len) {
        if (S[i] != T[i]) {
            cnt++;
        }
    }
    cout << cnt << yn;
    return 0;
}