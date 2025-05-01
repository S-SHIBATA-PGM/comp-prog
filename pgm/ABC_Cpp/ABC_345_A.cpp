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
    const char lt = '<';
    const char eq = '=';
    const char gt = '>';
    const string Yes = "Yes";
    const string No = "No";
    const int size = S.size();
    if (S.at (0) == lt && S.substr (1, size - 2) == string (size - 2, eq) &&
        S.at (size - 1) == gt) {
        cout << Yes << endl;
    } else {
        cout << No << endl;
    }
    return 0;
}