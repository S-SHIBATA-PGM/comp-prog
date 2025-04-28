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
    const int no = -1;
    const int one = 1;
    const int three = 3;
    if (A == B) {
        cout << no << endl;
    } else {
        FOR (i, one, three + one) {
            if (i != A && i != B) {
                cout << i << endl;
                break;
            }
        }
    }
    return 0;
}