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
    cin >> N;
    vector<int> P;
    REP (i, N) {
        cin >> P.emplace_back();
    }
    const int max = *max_element (begin (P), end (P));
    const int cnt =
        count_if (begin (P), end (P), [max] (int p) { return p == max; });
    cout << ((P[0] != max || (P[0] == max && cnt > 1)) ? max - P[0] + 1 : 0)
         << endl;
    return 0;
}