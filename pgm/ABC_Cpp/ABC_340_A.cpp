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
    int A, B, D;
    cin >> A >> B >> D;
    const string blank = "";
    const string space = " ";
    string s = blank;
    for (int i = A; i < B + 1; i += D) {
        cout << s << i;
        s = space;
    }
    cout << endl;
    return 0;
}