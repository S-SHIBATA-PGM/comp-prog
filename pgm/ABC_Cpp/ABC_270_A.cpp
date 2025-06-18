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

int Test[4];

void check_solved (int p) {
    if (p == 1) {
        Test[1]++;
    } else if (p == 2) {
        Test[2]++;
    } else if (p == 3) {
        Test[1]++;
        Test[2]++;
    } else if (p == 4) {
        Test[3]++;
    } else if (p == 5) {
        Test[1]++;
        Test[3]++;
    } else if (p == 6) {
        Test[2]++;
        Test[3]++;
    } else if (p == 7) {
        Test[1]++;
        Test[2]++;
        Test[3]++;
    }
}

int main() {
    int A, B;
    cin >> A >> B;
    check_solved (A);
    check_solved (B);
    int point = 0;
    REP (i, 4) {
        if (0 < Test[i]) {
            point += i;
            if (i == 3) {
                point += 1;
            }
        }
    }
    cout << point << endl;
    return 0;
}