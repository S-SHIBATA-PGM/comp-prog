#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int N, S, T, W;
    cin >> N >> S >> T >> W;
    vector<int> A (N);
    const int one = 1;
    const int zero = 0;
    int i = zero;
    A[i] = W;
    int pre = A[i];
    i++;
    int diff;
    while (cin >> diff) {
        A[i] = pre + diff;
        pre = A[i];
        i++;
    }
    cout << ranges::count_if (A, [S, T] (int a) { return a >= S && a <= T; })
         << endl;
    return 0;
}