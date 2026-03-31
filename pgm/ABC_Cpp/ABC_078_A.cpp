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
    string str_1, str_2;
    cin >> str_1 >> str_2;
    const string lt = "<";
    const string gt = ">";
    const string eq = "=";
    ll X, Y;
    stringstream ss;
    ss << hex << str_1;
    ss >> X;
    ss.str ("");
    ss.clear();
    ss << hex << str_2;
    ss >> Y;
    cout << (X < Y ? lt : X > Y ? gt : eq) << endl;
    return 0;
}