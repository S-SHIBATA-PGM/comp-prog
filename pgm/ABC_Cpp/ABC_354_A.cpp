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
    int H;
    cin >> H;
    const int base = 2;
    int e = 1;
    int h = 1;
    int day = 1;
    while (h <= H) {
        e *= base;
        h += e;
        day++;
    }
    cout << day << endl;
    return 0;
}