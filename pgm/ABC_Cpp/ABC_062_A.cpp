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
    int x, y;
    cin >> x >> y;
    const string Yes = "Yes";
    const string No = "No";
    const int one = 1;
    const int two = 2;
    const int three = 3;
    const int four = 4;
    const int five = 5;
    const int six = 6;
    const int seven = 7;
    const int eight = 8;
    const int nine = 9;
    const int ten = 10;
    const int eleven = 11;
    const int twelve = 12;
    const set<int> g1 = {one, three, five, seven, eight, ten, twelve};
    const set<int> g2 = {four, six, nine, eleven};
    const set<int> g3 = {two};
    cout << (g1.count (x) && g1.count (y) || g2.count (x) && g2.count (y) ||
                     g3.count (x) && g3.count (y)
                 ? Yes
                 : No)
         << endl;
    return 0;
}