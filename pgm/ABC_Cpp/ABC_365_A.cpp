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
    int Y;
    cin >> Y;
    const int Year = 365;
    const int LeapYear = 366;
    cout << (Y % 4 != 0                     ? Year
             : Y % 4 == 0 && Y % 100 != 0   ? LeapYear
             : Y % 100 == 0 && Y % 400 != 0 ? Year
                                            : LeapYear)
         << endl;
    return 0;
}