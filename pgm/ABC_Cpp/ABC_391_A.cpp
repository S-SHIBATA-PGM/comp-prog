#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    string D;
    cin >> D;
    map<string, string> NEWS {{"N", "S"}, {"E", "W"}, {"W", "E"}, {"S", "N"}};
    REP (i, D.size()) cout << NEWS[D.substr (i, 1)];
    cout << endl;
    return 0;
}