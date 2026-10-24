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
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<int> A (N);
    REP (i, N) {
        cin >> A[i];
    }
    vector<int> sum (N + one, zero);
    REP (i, N) {
        sum[i + one] = sum[i] + A[i];
    }
    int cnt = zero;
    FOR (l, zero, N) {
        FOR (r, l, N) {
            int s = sum[r + one] - sum[l];
            bool is_valid = true;
            FOR (i, l, r + one) {
                if (A[i] != zero && s % A[i] == zero) {
                    is_valid = false;
                    break;
                }
            }
            if (is_valid) {
                cnt++;
            }
        }
    }
    cout << cnt << yn;
    return 0;
}