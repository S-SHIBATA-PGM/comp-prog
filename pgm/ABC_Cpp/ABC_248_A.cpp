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
    const char eight = '8';
    const char nine = '9';
    const char zero = '0';
    ALL (sort, S);
    REP (i, (int)S.size()) {
        if (S.at (i) != i + zero) {
            cout << i << endl;
            break;
        } else if (i + zero == eight) {
            cout << nine << endl;
        }
    }
    return 0;
}