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
    string S;
    cin >> S;
    if (S[0] == S[1] && S[1] != S[2] && S[2] == S[3])
        cout << "Yes" << endl;
    else if (S[0] == S[2] && S[1] != S[2] && S[1] == S[3])
        cout << "Yes" << endl;
    else if (S[0] == S[3] && S[0] != S[1] && S[1] == S[2])
        cout << "Yes" << endl;
    else
        cout << "No" << endl;
    return 0;
}