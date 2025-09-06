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
    double H;
    cin >> H;
    const double additional = 12800000;
    const int sign_part = 1;
    const int integer_part = 7;
    const int dot_part = 1;
    const int precision = 9;
    const int yn = 1;
    const int size = sign_part + integer_part + dot_part + precision + yn;
    const string dot = ".";
    const string f = "f";
    const string per = "%";
    const string fmt = per + dot + to_string (precision) + f;
    const double value = sqrt (H * (additional + H));
    char text[size];
    snprintf (text, std::size (text), fmt.c_str(), value);
    cout << text << endl;
    return 0;
}