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
    const int one = 1;
    const int two = 2;
    const int ten = 10;
    const int zero = 0;
    int ABC[] = {A, B, C};
    cout << (ALL (sort, ABC, greater<int>()),
             ten * ABC[zero] + ABC[one] + ABC[two])
         << endl;
    return 0;
}