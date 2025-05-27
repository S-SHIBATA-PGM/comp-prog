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
    int N, M;
    cin >> N >> M;
    int A[N], B[M];
    REP (i, N) {
        cin >> A[i];
    }
    REP (i, M) {
        cin >> B[i];
    }
    vector<int> v;
    v.reserve (M);
    transform (B, B + M, back_inserter (v),
               [&] (int idx) { return A[idx - 1]; });
    int sum = accumulate (begin (v), end (v), 0);
    std::cout << sum << endl;
    return 0;
}