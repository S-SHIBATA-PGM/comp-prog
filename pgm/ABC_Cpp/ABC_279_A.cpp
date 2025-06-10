#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f)(begin (ALL), end (ALL), ##__VA_ARGS__);                     \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    string S;
    cin >> S;
    const char v = 'v';
    const int one = 1;
    const int two = 2;
    int cnt = 0;
    for (char const& c : S) {
        if (c == v) {
            cnt += one;
        } else {
            cnt += two;
        }
    }
    cout << cnt << endl;
    return 0;
}