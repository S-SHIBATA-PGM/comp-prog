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
    int N, L, R;
    cin >> N >> L >> R;
    const int start = 1;
    vector<int> v (N);
    ALL (iota, v, start);
    sort (v.begin() + L - 1, v.begin() + R, greater<int>());
    const string space = " ";
    string s = "";
    REP (i, N) {
        cout << s;
        cout << v.at (i);
        s = space;
    }
    cout << endl;
    return 0;
}