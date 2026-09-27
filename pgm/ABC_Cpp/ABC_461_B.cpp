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
    vector<int> A (N);
    REP (i, N) {
        cin >> A[i];
    }
    vector<int> B (N);
    REP (i, N) {
        cin >> B[i];
    }
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    bool is_ok = true;
    REP (i, N) {
        if (B[A[i] - one] != i + one) {
            is_ok = false;
            break;
        }
    }
    cout << (is_ok ? Yes : No) << yn;
    return 0;
}