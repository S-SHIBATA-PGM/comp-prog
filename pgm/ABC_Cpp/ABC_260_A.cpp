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
    const int no = -1;
    const int one = 1;
    const int two = 2;
    const int three = 3;
    bool unique_flg = false;
    for (int i = 0; i < (int)S.size(); i++) {
        if (unique_flg)
            break;
        if (S.at (i) != S.at ((i + one) % three) &&
            S.at (i) != S.at ((i + two) % three)) {
            unique_flg = true;
            cout << S.at (i) << endl;
        }
    }
    if (!unique_flg)
        cout << no << endl;
    return 0;
}