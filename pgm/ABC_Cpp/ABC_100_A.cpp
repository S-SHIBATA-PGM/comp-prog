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
    const string Yay = "Yay!";
    const string no = ":(";
    const char plus = '+';
    const int eight = 8;
    cout << (A <= eight && B <= eight ? Yay : no) << endl;
    return 0;
}