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
    int N, K, X;
    cin >> N >> K >> X;
    vector<int> A;
    REP (i, N) {
        cin >> A.emplace_back();
    }
    auto itr = A.begin();
    A.insert (itr + K, X);
    const string space = " ";
    string s = "";
    REP (i, (int)A.size()) {
        cout << s;
        cout << A[i];
        s = space;
    }
    cout << endl;
    return 0;
}