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
    int V, A, B, C;
    cin >> V >> A >> B >> C;
    const string T = "T";
    const string F = "F";
    const string M = "M";
    string turn = T;
    while (V >= 0) {
        if (turn == T) {
            V -= A;
            turn = F;
        } else if (turn == F) {
            V -= B;
            turn = M;
        } else {
            V -= C;
            turn = T;
        }
    }
    cout << turn << endl;
    return 0;
}