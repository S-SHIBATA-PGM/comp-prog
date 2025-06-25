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
    int A, B, C, D, E;
    cin >> A >> B >> C >> D >> E;
    const string Yes = "Yes";
    const string No = "No";
    const int two = 2;
    const int three = 3;
    const int thirteen = 13;
    int cards[thirteen] = {};
    cards[A - 1]++;
    cards[B - 1]++;
    cards[C - 1]++;
    cards[D - 1]++;
    cards[E - 1]++;
    int threeCards = 0;
    int pairs = 0;
    REP (i, (int)(sizeof (cards) / sizeof (cards[0]))) {
        if (cards[i] == three) {
            threeCards++;
        } else if (cards[i] == two) {
            pairs++;
        }
    }
    cout << (threeCards == 1 && pairs == 1 ? Yes : No) << endl;
    return 0;
}