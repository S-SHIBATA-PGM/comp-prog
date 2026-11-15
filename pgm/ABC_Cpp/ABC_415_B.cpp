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
    constexpr string_view comma = ",";
    constexpr char c_sharp = '#';
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    vector<int> position;
    int len = S.length();
    REP (i, len) {
        if (S[i] == c_sharp) {
            position.push_back (i + one);
        }
    }
    int pos_size = position.size();
    for (int i = zero; i < pos_size; i += two) {
        cout << position[i] << comma << position[i + one] << yn;
    }
    return 0;
}