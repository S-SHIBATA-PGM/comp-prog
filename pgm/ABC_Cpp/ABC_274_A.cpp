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
    double A, B;
    cin >> A >> B;
    int digit = 4;
    double average =
        round ((B / A) * pow (10, digit - 1)) / pow (10, digit - 1);
    char text[6];
    snprintf (text, size (text), "%.3f", average);
    cout << text << endl;
    return 0;
}