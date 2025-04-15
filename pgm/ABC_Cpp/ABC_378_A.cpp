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
    int A1, A2, A3, A4;
    cin >> A1 >> A2 >> A3 >> A4;
    const int one = 1;
    const int two = 2;
    const int three = 3;
    const int four = 4;
    map<int, int> A = {{one, 0}, {two, 0}, {three, 0}, {four, 0}};
    A[A1]++;
    A[A2]++;
    A[A3]++;
    A[A4]++;
    int cnt = 0;
    REP (i, (int)A.size()) {
        cnt += A[i + 1] / 2;
    }
    cout << cnt << endl;
    return 0;
}