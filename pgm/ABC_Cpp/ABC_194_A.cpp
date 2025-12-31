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
    const int solid15 = 15;
    const int solid10 = 10;
    const int fat8 = 8;
    const int fat3 = 3;
    const int one = 1;
    const int two = 2;
    const int three = 3;
    const int four = 4;
    int AB = A + B;
    if (solid15 <= AB && fat8 <= B) {
        cout << one << endl;
    } else if (solid10 <= AB && fat3 <= B) {
        cout << two << endl;
    } else if (fat3 <= AB) {
        cout << three << endl;
    } else {
        cout << four << endl;
    }
    return 0;
}