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
    string S;
    cin >> N >> S;
    constexpr string_view o = "o";
    constexpr string_view blank = "";
    constexpr string_view yn = "\n";
    size_t pos = S.find_first_not_of (o);
    if (pos != string::npos) {
        cout << S.substr (pos) << yn;
    } else {
        cout << blank << yn;
    }
    return 0;
}