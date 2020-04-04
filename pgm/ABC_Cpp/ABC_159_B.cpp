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

bool checkPal (string s) {
    string pre = s;
    ALL (reverse, pre);
    return s == pre;
}

int main() {
    string S;
    cin >> S;
    string str = S.substr (0, S.length() / 2);
    cout << (checkPal (S) && checkPal (str) ? "Yes" : "No") << endl;
    return 0;
}
