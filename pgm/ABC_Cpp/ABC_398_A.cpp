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
    constexpr string_view yn = "\n";
    constexpr char hyphen = '-';
    constexpr char equal = '=';
    constexpr int two = 2;
    const string lr ((N - two + N % two) / two, hyphen);
    const string c (two - N % two, equal);
    cout << lr << c << lr << yn;
    return 0;
}