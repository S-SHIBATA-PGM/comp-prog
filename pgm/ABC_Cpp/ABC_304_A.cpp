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
    string S[N];
    int A[N];
    REP (i, N) {
        cin >> S[i];
        cin >> A[i];
    }
    int idx = distance (A, min_element (A, A + N));
    REP (i, N) {
        cout << S[(i + idx) % N] << endl;
    }
    return 0;
}