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
    int A, B;
    cin >> A >> B;
    const string Alice = "Alice";
    const string Bob = "Bob";
    const string Draw = "Draw";
    const int one = 1;
    const int fourteen = 14;
    A = A == one ? fourteen : A;
    B = B == one ? fourteen : B;
    cout << (A > B ? Alice : A < B ? Bob : Draw) << endl;
    return 0;
}