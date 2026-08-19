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
    int S;
    cin >> S;
    constexpr string_view Success = "Success";
    constexpr string_view Failure = "Failure";
    constexpr string_view yn = "\n";
    constexpr int two_hundred = 200;
    constexpr int two_hundred_ninety_nine = 299;
    cout << (two_hundred <= S && S <= two_hundred_ninety_nine ? Success
                                                              : Failure)
         << yn;
    return 0;
}