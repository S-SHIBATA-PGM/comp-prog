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
    int A, B, C;
    cin >> A >> B >> C;
    const int no = -1;
    const int zero = 0;
    int multiple = A + C - A % C;
    if (A % C == zero) {
        cout << A << endl;
    } else if (multiple <= B) {
        cout << multiple << endl;
    } else {
        cout << no << endl;
    }
    return 0;
}