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
    string S, T;
    cin >> S >> T;
    constexpr string_view yn = "\n";
    constexpr int c_zero = '0';
    constexpr int one = 1;
    constexpr int ten = 10;
    constexpr int zero = 0;
    int mn = numeric_limits<int>::max();
    FOR (i, zero, N - M + one) {
        int curr = zero;
        REP (j, M) {
            int s = S[i + j] - c_zero;
            int t = T[j] - c_zero;
            int diff = (s - t + ten) % ten;
            curr += diff;
        }
        mn = min (mn, curr);
    }
    cout << mn << yn;
    return 0;
}