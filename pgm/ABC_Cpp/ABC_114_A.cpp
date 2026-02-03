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
    int X;
    cin >> X;
    const string YES = "YES";
    const string NO = "NO";
    const int shichi = 7;
    const int go = 5;
    const int san = 3;
    const vector<int> shichigosan = {shichi, go, san};
    cout << (ALL (find, shichigosan, X) != shichigosan.end() ? YES : NO)
         << endl;
    return 0;
}