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
    int N;
    char c1, c2;
    string S;
    cin >> N >> c1 >> c2 >> S;
    REP (i, N) {
        if (S[i] != c1) {
            S[i] = c2;
        }
    }
    cout << S << endl;
    return 0;
}