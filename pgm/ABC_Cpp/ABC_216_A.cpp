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
    string XY;
    cin >> XY;
    const string dot = ".";
    const string minus = "-";
    const string plus = "+";
    const int one = 1;
    const int two = 2;
    const int six = 6;
    const int zero = 0;
    string str = XY + dot;
    long unsigned int l = str.length(), sl = dot.length();
    long unsigned int pos = 0, prev = 0;
    vector<string> arr;
    for (; pos < l && (pos = str.find (dot, pos)) != string::npos;
         prev = (pos += sl)) {
        arr.emplace_back (str, prev, pos - prev);
    }
    int X = stoi (arr.at (zero));
    int Y = stoi (arr.at (one));
    cout << X;
    if (Y <= two) {
        cout << minus;
    } else if (Y > six) {
        cout << plus;
    }
    cout << endl;
    return 0;
}