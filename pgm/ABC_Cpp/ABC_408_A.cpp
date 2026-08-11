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
    int N, S;
    cin >> N >> S;
    vector<int> T (N);
    REP (i, N) {
        cin >> T[i];
    }
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int zero = 0;
    string_view is_awake = Yes;
    int pre = zero;
    int size = T.size();
    REP (i, size) {
        if (S < T[i] - pre) {
            is_awake = No;
            break;
        }
        pre = T[i];
    }
    cout << is_awake << yn;
    return 0;
}