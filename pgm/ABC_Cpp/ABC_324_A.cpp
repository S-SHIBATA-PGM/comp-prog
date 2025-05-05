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
    int N;
    cin >> N;
    int A[N];
    REP (i, N) {
        cin >> A[i];
    }
    const string Yes = "Yes";
    const string No = "No";
    cout << (all_of (A, A + N, [&A] (int a) { return a == A[0]; }) ? Yes : No)
         << endl;
    return 0;
}