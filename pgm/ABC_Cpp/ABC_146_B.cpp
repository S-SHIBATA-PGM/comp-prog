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

string trans (string S, string f, string t) {
    string ret;
    REP (i, S.length()) {
        int idx = ALL (find, f, S[i]) - f.begin();
        ret += t[idx];
    }
    return ret;
}

int main() {
    int N;
    cin >> N;
    string S;
    cin >> S;
    string alp = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    cout << trans (S, alp, alp.substr (N) + alp.substr (0, N)) << endl;
    return 0;
}
