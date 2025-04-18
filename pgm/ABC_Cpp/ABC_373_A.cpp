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
    const int num = 12;
    int cnt = 0;
    FOR (i, 1, num + 1) {
        cin >> S;
        if ((int)S.length() == i) {
            cnt++;
        }
    }
    cout << cnt << endl;
    return 0;
}