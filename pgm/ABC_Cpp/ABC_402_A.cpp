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
    string S;
    cin >> S;
    constexpr string_view yn = "\n";
    string s = "";
    s.reserve (S.length());
    for (char c : S) {
        if (isupper (static_cast<unsigned char> (c))) {
            s += c;
        }
    }
    cout << s << yn;
    return 0;
}