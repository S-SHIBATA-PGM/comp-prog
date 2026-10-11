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
    constexpr string_view blank = "";
    constexpr string_view yn = "\n";
    constexpr char cA = 'a';
    constexpr char cZ = 'z';
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<int> cnt (cZ - cA + one, zero);
    int len = static_cast<int> (S.length());
    REP (i, len) {
        cnt[S[i] - cA]++;
    }
    int mx = zero;
    REP (i, cZ - cA + one) {
        if (cnt[i] > mx) {
            mx = cnt[i];
        }
    }
    string str = static_cast<string> (blank);
    str.reserve (len);
    REP (i, len) {
        char c = S[i];
        int idx = c - cA;
        if (cnt[idx] < mx) {
            str.push_back (c);
        }
    }
    cout << str << yn;
    return 0;
}