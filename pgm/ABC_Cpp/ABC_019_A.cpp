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

constexpr int three = 3;
int abc[three];

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    constexpr string_view yn = "\n";
    cin >> abc[zero] >> abc[one] >> abc[two];
    ALL (sort, abc);
    cout << abc[one] << yn;
    return 0;
}