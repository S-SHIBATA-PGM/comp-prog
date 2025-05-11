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
    int s;
    vector<int> S;
    while (cin >> s) {
        S.emplace_back (s);
    }
    const string Yes = "Yes";
    const string No = "No";
    vector<int> v = S;
    ALL (sort, v);
    if (equal (begin (S), end (S), begin (v))) {
        cout << (all_of (begin (S), end (S),
                         [] (int s) {
                             return (s >= 100 && s <= 675 && s % 25 == 0);
                         })
                     ? Yes
                     : No)
             << endl;
    } else {
        cout << No << endl;
    }
    return 0;
}