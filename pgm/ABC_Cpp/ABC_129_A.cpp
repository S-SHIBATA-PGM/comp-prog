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
    int P, Q, R;
    cin >> P >> Q >> R;
    const int one = 1;
    const int zero = 0;
    vector<int> v = {P, Q, R};
    cout << (ALL (sort, v), v[zero] + v[one]) << endl;
    return 0;
}