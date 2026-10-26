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
    string X;
    cin >> X;
    constexpr string_view yn = "\n";
    constexpr char c_zero = '0';
    constexpr int one = 1;
    constexpr int zero = 0;
    ALL (sort, X);
    if (X[zero] == c_zero) {
        int len = X.length();
        FOR (i, one, len) {
            if (X[i] != c_zero) {
                swap (X[zero], X[i]);
                break;
            }
        }
    }
    cout << X << yn;
    return 0;
}