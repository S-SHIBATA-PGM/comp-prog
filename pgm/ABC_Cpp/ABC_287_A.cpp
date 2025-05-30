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
    const string For = "For";
    const string Yes = "Yes";
    const string No = "No";
    const int most = (N + 1) / 2;
    string line = "";
    int cnt_for = 0;
    int cnt_against = 0;
    while (cin >> line) {
        if (line == For) {
            cnt_for++;
        } else {
            cnt_against++;
        }
        if (cnt_for >= most) {
            cout << Yes << endl;
            break;
        } else if (cnt_against >= most) {
            cout << No << endl;
            break;
        }
    }
    return 0;
}