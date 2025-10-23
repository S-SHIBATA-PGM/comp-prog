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
    const int problem4 = 4;
    const int problem6 = 6;
    const int problem8 = 8;
    const int one = 1;
    const int two = 2;
    const int zero = 0;
    const int keys[3] = {125, 211, 214};
    map<int, int> m;
    m[keys[zero]] = problem4;
    m[keys[one]] = problem6;
    m[keys[two]] = problem8;
    REP (i, (int)(sizeof (keys) / sizeof (keys[zero]))) {
        if (keys[i] >= N) {
            cout << m[keys[i]] << endl;
            break;
        }
    }
    return 0;
}