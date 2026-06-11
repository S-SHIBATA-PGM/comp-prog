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
    int N;
    cin >> N;
    constexpr string_view YES = "YES";
    constexpr string_view NO = "NO";
    constexpr string_view yn = "\n";
    constexpr char c_three = '3';
    constexpr int three = 3;
    cout << (to_string (N).find (c_three) != string::npos || N % three == 0
                 ? YES
                 : NO)
         << yn;
    return 0;
}