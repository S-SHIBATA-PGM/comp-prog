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
    set<int> AB;
    REP (i, 2) {
        int v;
        cin >> v;
        AB.insert (v);
    }
    set<int> ABC {1, 2, 3};
    set<int> ans;
    set_difference (begin (ABC), end (ABC), begin (AB), end (AB),
                    inserter (ans, end (ans)));
    cout << *begin (ans) << endl;
    return 0;
}
