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
    int A[9], B[8];
    REP (i, 9) {
        cin >> A[i];
    }
    REP (i, 8) {
        cin >> B[i];
    }
    cout << ALL (reduce, A) - ALL (reduce, B) + 1 << endl;
    return 0;
}