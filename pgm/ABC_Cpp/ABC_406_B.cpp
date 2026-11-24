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
using i128 = __int128_t;

ostream& operator<< (ostream& os, i128 val) {
    if (val == 0) {
        return os << '0';
    }
    if (val < 0) {
        os << '-';
        val = -val;
    }
    string buf;
    while (val > 0) {
        buf.push_back (static_cast<char> ('0' + (val % 10)));
        val /= 10;
    }
    reverse (buf.begin(), buf.end());
    return os << buf;
}

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N, K;
    cin >> N >> K;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int ten = 10;
    constexpr int zero = 0;
    i128 limit = one;
    REP (k, K) {
        limit *= ten;
    }
    i128 cur = one;
    REP (i, N) {
        ll a_val;
        cin >> a_val;
        i128 A = static_cast<i128> (a_val);
        bool reached_limit = false;
        if (A > zero) {
            i128 threshold = (limit + A - one) / A;
            if (cur >= threshold) {
                reached_limit = true;
            }
        } else {
            if (cur * A >= limit) {
                reached_limit = true;
            }
        }
        if (reached_limit) {
            cur = one;
        } else {
            cur *= A;
        }
    }
    cout << cur << yn;
    return 0;
}