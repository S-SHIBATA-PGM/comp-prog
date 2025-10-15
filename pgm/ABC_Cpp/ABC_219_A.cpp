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
    int X;
    cin >> X;
    const string expert = "expert";
    const int upper = 90;
    int rank[] = {0, 40, 70, upper};
    int pre = 0;
    for (int i = size (rank) - 1; i >= 0; i--) {
        if (X < upper) {
            if (X >= rank[i]) {
                cout << pre - X << endl;
                break;
            }
        } else {
            cout << expert << endl;
            break;
        }
        pre = rank[i];
    }
    return 0;
}