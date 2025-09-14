// Ref ABC 233 A
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
    double X, Y;
    cin >> X >> Y;
    const int ten = 10;
    const double zero = 0.0;
    const int sign_part = 0;
    const int integer_part = 3;
    const int dot_part = 0;
    const int precision = 0;
    const int yn = 1;
    const int sz = sign_part + integer_part + dot_part + precision + yn;
    const string dot = ".";
    const string f = "f";
    const string per = "%";
    const string fmt = per + dot + to_string (precision) + f;
    const double value = max (zero, ceil ((Y - X) / ten));
    char text[sz];
    snprintf (text, size (text), fmt.c_str(), value);
    cout << text << endl;
    return 0;
}