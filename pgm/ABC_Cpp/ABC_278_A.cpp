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
    int N, K;
    cin >> N >> K;
    vector<int> A;
    REP (i, N) {
        cin >> A.emplace_back();
    }
    const int zero = 0;
    const string blank = "";
    const string space = " ";
    REP (i, K) {
        A.emplace_back (zero);
        A.erase (begin (A));
    }
    string s = blank;
    REP (i, N) {
        cout << s;
        cout << A.at (i);
        s = space;
    }
    cout << endl;
    return 0;
}