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
    int D;
    cin >> D;
    const int twenty_third = 23;
    const int twenty_fourth = 24;
    const int twenty_fifth = 25;
    const string Christmas = "Christmas";
    const string Christmas_Eve = "Christmas Eve";
    const string Christmas_Eve_Eve = "Christmas Eve Eve";
    const string Christmas_Eve_Eve_Eve = "Christmas Eve Eve Eve";
    cout << (D == twenty_fifth    ? Christmas
             : D == twenty_fourth ? Christmas_Eve
             : D == twenty_third  ? Christmas_Eve_Eve
                                  : Christmas_Eve_Eve_Eve)
         << endl;
    return 0;
}