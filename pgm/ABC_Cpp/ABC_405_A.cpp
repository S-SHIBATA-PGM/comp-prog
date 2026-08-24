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
    int R, X;
    cin >> R >> X;
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view yn = "\n";
    constexpr int lower1 = 1600;
    constexpr int lower2 = 1200;
    constexpr int upper1 = 2999;
    constexpr int upper2 = 2399;
    constexpr int one = 1;
    constexpr int lower[] = {lower1, lower2};
    constexpr int upper[] = {upper1, upper2};
    cout << (lower[X - one] <= R && R <= upper[X - one] ? Yes : No) << yn;
    return 0;
}