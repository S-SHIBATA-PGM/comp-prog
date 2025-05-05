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
    const string zero = "0";
    const string Yes = "Yes";
    const string No = "No";
    string reg = "^.";
    reg.append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append (".").append (zero);
    reg.append ("$");
    regex pattern (reg);
    cout << (regex_match (S, pattern) ? Yes : No) << endl;
    return 0;
}