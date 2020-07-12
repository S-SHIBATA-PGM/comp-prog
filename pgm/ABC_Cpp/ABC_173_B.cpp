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
    vector<string> S (N, "");
    REP (i, N) cin >> S[i];
    vector<string> judge {"AC", "WA", "TLE", "RE"};
    string mul = " x ";
    vector<int> C (judge.size(), 0);
    REP (i, N) C[ALL (find, judge, S[i]) - begin (judge)]++;
    REP (i, judge.size()) cout << judge[i] + mul + to_string (C[i]) << endl;
    return 0;
}