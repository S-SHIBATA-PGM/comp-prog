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
    constexpr char cI = 'i';
    constexpr char cJ = 'j';
    constexpr string_view yn = "\n";
    cout << static_cast<int> (ALL (count_if, S, ([cI, cJ] (char c) {
                                       return c == cI || c == cJ;
                                   })))
         << yn;
    return 0;
}