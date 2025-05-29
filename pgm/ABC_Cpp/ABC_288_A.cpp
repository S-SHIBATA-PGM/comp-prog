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
    cin.tie (0);
    ios::sync_with_stdio (false);
    cin.ignore (numeric_limits<streamsize>::max(), '\n');
    int A, B;
    while (cin >> A >> B) {
        cout << A + B << endl;
    }
    return 0;
}