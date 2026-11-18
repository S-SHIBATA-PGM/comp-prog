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
    string S, T;
    cin >> S >> T;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    int len = S.length();
    FOR (i, one, len) {
        char c = S[i];
        if (isupper (static_cast<unsigned char> (c))) {
            char pre = S[i - one];
            if (T.find (pre) == string::npos) {
                cout << No << yn;
                return 0;
            }
        }
    }
    cout << Yes << yn;
    return 0;
}