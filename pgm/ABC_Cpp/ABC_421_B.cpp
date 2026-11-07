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

static ll f (ll x);

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int X, Y;
    cin >> X >> Y;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int three = 3;
    constexpr int ten = 10;
    constexpr int eleven = 11;
    constexpr int zero = 0;
    vector<ll> a (eleven, zero);
    a[one] = X;
    a[two] = Y;
    FOR (i, three, eleven) {
        int sum = a[i - one] + a[i - two];
        a[i] = f (sum);
    }
    cout << a[ten] << yn;
    return 0;
}
static ll f (ll x) {
    string s = to_string (x);
    ALL (reverse, s);
    return stoll (s);
}