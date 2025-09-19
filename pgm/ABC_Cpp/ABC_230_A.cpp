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
    int N;
    cin >> N;
    const string AGC = "AGC";
    const int missing = 42;
    const int one = 1;
    const int digit = 3;
    const int mask = 0;
    const int sign_part = 0;
    const int integer_part = 3;
    const int dot_part = 0;
    const int precision = 0;
    const int yn = 1;
    const int sz = sign_part + integer_part + dot_part + precision + yn;
    const string d = "d";
    const string per = "%";
    const string fmt = per + to_string (mask) + to_string (digit) + d;
    const int value = N >= missing ? N + one : N;
    char text[sz];
    snprintf (text, size (text), fmt.c_str(), value);
    string str = AGC;
    cout << str.append (string (text)) << endl;
    return 0;
}