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
    int M, D;
    cin >> M >> D;
    string S;
    cin >> S;
    constexpr string_view yn = "\n";
    constexpr char c_G = 'G';
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<bool> is_watched (M, false);
    for (int i = zero; i < M; ++i) {
        if (S[i] == c_G) {
            int left = max (zero, i - D);
            int right = min (M - one, i + D);
            for (int j = left; j <= right; ++j) {
                is_watched[j] = true;
            }
        }
    }
    int cnt = zero;
    for (int i = zero; i < M; ++i) {
        if (!is_watched[i]) {
            cnt++;
        }
    }
    cout << cnt << yn;
    return 0;
}