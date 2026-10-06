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
    int H, W;
    cin >> H >> W;
    constexpr string_view yn = "\n";
    constexpr char cSharp = '#';
    constexpr char cPeriod = '.';
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    string top_bottom (W, cSharp);
    string middle (W, cPeriod);
    middle.front() = cSharp;
    middle.back() = cSharp;
    REP (i, H) {
        cout << (i == zero || i == H - one ? top_bottom : middle) << yn;
    }
    return 0;
}