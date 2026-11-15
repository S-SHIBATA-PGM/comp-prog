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
    constexpr char c_circle = 'o';
    constexpr char c_dot = '.';
    constexpr char c_sharp = '#';
    string T;
    int len = S.length();
    bool is_placed = false;
    REP (i, len) {
        char c = S[i];
        if (c == c_sharp) {
            T.push_back (c_sharp);
            is_placed = false;
        } else {
            if (!is_placed) {
                T.push_back (c_circle);
                is_placed = true;
            } else {
                T.push_back (c_dot);
            }
        }
    }
    cout << T << yn;
    return 0;
}