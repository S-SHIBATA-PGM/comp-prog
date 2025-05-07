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

double seqence_numbers (vector<int>& num, double an, double a1, double d,
                        double last) {
    // Sequence of Numbers with Common Difference
    if (last < an) {
        num.insert (num.begin(), an - d);
        return an - d;
    }
    an = seqence_numbers (num, an + d, a1, d, last) - d;
    if (a1 <= an) {
        num.insert (num.begin(), an);
    } else {
        an += d;
    }
    return an;
}

int main() {
    int N, M, P;
    cin >> N >> M >> P;
    vector<int> num;
    if (N < M) {
        cout << 0 << endl;
    } else {
        seqence_numbers (num, M, M, P, N);
        cout << num.size() << endl;
    }
    return 0;
}