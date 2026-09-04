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
    vector<int> L (N);
    int sum = zero;
    REP (i, N) {
        cin >> L[i];
        sum += L[i];
    }
    int min = INT_MAX;
    int left = zero;
    REP (i, N - one) {
        left += L[i];
        int diff = abs (left - sum + left);
        if (diff < min) {
            min = diff;
        }
    }
    cout << min << yn;
    return 0;
}