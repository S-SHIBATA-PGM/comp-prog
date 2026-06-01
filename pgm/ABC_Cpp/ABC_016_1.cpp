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
    constexpr string_view YES = "YES";
    constexpr string_view NO = "NO";
    constexpr string_view yn = "\n";
    constexpr int zero = 0;
    int M, D;
    cin >> M >> D;
    cout << (M % D ? NO : YES) << yn;
    return 0;
}