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
    string S1, S2;
    cin >> S1 >> S2;
    const char sharp = '#';
    const string Yes = "Yes";
    const string No = "No";
    const int zero = 0;
    const int one = 1;
    if (S1[zero] == sharp && S1[one] != sharp && S2[zero] != sharp &&
        S2[one] == sharp) {
        cout << No << endl;
    } else if (S1[zero] != sharp && S1[one] == sharp && S2[zero] == sharp &&
               S2[one] != sharp) {
        cout << No << endl;
    } else {
        cout << Yes << endl;
    }
    return 0;
}