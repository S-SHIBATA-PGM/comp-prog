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
    string S;
    cin >> S;
    const string Yes = "Yes";
    const string No = "No";
    const string d = "d";
    const int one = 1;
    const int two = 2;
    string pattern =
        "(\\" + d + ")" + "\\" + to_string (one) + "{" + to_string (two) + ",}";
    regex re (pattern);
    cout << (regex_search (S, re) ? Yes : No) << endl;
    return 0;
}