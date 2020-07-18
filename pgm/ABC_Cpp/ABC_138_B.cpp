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
    int N;
    cin >> N;
    vector<double> A (N, 0);
    REP (i, N) cin >> A[i];
    cout << fixed << setprecision (14)
         << (double)1 / ALL (accumulate, A, (double)0,
                             [=] (double pre, double cur) {
                                 return pre + (double)1 / cur;
                             })
         << endl;
    return 0;
}