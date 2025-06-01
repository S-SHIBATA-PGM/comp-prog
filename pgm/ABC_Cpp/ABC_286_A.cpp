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
    int N, P, Q, R, S;
    cin >> N >> P >> Q >> R >> S;
    const string blank = "";
    const string space = " ";
    int A[N];
    REP (i, N) {
        cin >> A[i];
    }
    swap_ranges (A + P - 1, A + Q, A + R - 1);
    string str = blank;
    REP (i, N) {
        cout << str;
        cout << A[i];
        str = space;
    }
    cout << endl;
    return 0;
}