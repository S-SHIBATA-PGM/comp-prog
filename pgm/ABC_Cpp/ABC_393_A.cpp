#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    string S1, S2;
    cin >> S1 >> S2;
    const string sick = "sick";
    const string fine = "fine";

    if (S1 == sick && S2 == sick) {
        cout << 1 << endl;
    } else if (S1 == sick && S2 == fine) {
        cout << 2 << endl;
    } else if (S1 == fine && S2 == sick) {
        cout << 3 << endl;
    } else {
        cout << 4 << endl;
    }
    return 0;
}