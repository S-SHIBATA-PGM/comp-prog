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
    int A, B, C, D;
    cin >> A >> B >> C >> D;
    const string Yes = "Yes";
    const string No = "No";
    int cards[13];
    fill_n (&cards[0], 13, 0);
    cards[A - 1]++;
    cards[B - 1]++;
    cards[C - 1]++;
    cards[D - 1]++;
    int threeCards = 0;
    int pairs = 0;
    REP (i, 13) {
        if (cards[i] == 3) {
            threeCards++;
            break;
        } else if (cards[i] == 2) {
            pairs++;
        }
    }
    cout << (threeCards == 1 || pairs == 2 ? Yes : No) << endl;
    return 0;
}