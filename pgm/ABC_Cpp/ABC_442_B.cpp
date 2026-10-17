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
    int Q;
    cin >> Q;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int three = 3;
    constexpr int zero = 0;
    bool is_playing = false;
    int vol = zero;
    REP (i, Q) {
        int A;
        cin >> A;
        if (A == one) {
            vol++;
        } else if (A == two) {
            if (one <= vol) {
                vol--;
            }
        } else {
            is_playing = !is_playing;
        }
        if (is_playing && vol >= three) {
            cout << Yes << yn;
        } else {
            cout << No << yn;
        }
    }
    return 0;
}