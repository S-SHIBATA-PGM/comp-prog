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
using i128 = __int128_t;

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    string T, U;
    cin >> T >> U;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr char c_question = '?';
    constexpr int one = 1;
    constexpr int zero = 0;
    int len_t = static_cast<int> (T.size());
    int len_u = static_cast<int> (U.size());
    FOR (i, zero, len_t - len_u + one) {
        bool is_match = true;
        REP (j, len_u) {
            char char_t = T[i + j];
            char char_u = U[j];
            if (char_t != c_question && char_t != char_u) {
                is_match = false;
                break;
            }
        }
        if (is_match) {
            cout << Yes << yn;
            return 0;
        }
    }
    cout << No << yn;
    return 0;
}