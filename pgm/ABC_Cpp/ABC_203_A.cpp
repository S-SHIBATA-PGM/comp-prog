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
    const int one = 1;
    const int two = 2;
    const int three = 3;
    const int zero = 0;
    int abc[three];
    cin >> abc[zero] >> abc[one] >> abc[two];
    const int no = 0;
    bool break_flg = false;
    REP (i, three) {
        if (break_flg)
            break;
        if (abc[(i + one) % three] == abc[(i + two) % three]) {
            break_flg = true;
            cout << abc[i] << endl;
        }
    }
    if (!break_flg)
        cout << no << endl;
    return 0;
}