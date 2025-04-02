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
    int A[5];
    REP (i, (int)(sizeof (A) / sizeof (int))) cin >> A[i];

    const string Yes = "Yes";
    const string No = "No";
    int times = 0;
    string ret = Yes;

    REP (i, (int)(sizeof (A) / sizeof (int))) {
        if (i == (int)(sizeof (A) / sizeof (int)) - 1 && A[i] != i + 1) {
            ret = No;
            break;
        } else {
            if (A[i] != i + 1) {
                if (times == 0 && A[i + 1] == i + 1) {
                    int num = A[i];
                    A[i] = A[i + 1];
                    A[i + 1] = num;
                    times = times + 1;
                } else {
                    ret = No;
                    break;
                }
            }
        }
    }

    cout << ((times != 1) ? No : ret) << endl;
    return 0;
}