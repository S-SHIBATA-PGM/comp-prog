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
    const char space = ' ';
    const char yn = '\n';
    REP (i, N - 1) {
        int B = A[i] * A[i + 1];
        cout << B << (i < N - 2 ? space : yn);
    }
    return 0;
}