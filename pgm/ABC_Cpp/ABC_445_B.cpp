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
    constexpr char cPeriod = '.';
    constexpr int two = 2;
    constexpr int zero = 0;
    int mx = zero;
    vector<string> S (N);
    REP (i, N) {
        cin >> S[i];
        int len = static_cast<int> (S[i].length());
        if (mx < len) {
            mx = len;
        }
    }
    REP (i, N) {
        int cnt = (mx - static_cast<int> (S[i].length())) / two;
        string border (cnt, cPeriod);
        cout << border << S[i] << border << yn;
    }
    return 0;
}