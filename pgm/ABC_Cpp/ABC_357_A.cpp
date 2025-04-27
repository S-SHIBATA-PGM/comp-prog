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
    int N, M;
    cin >> N >> M;
    vector<int> H;
    REP (i, N) {
        cin >> H.emplace_back();
    }
    vector<int> h_sum;
    partial_sum (H.begin(), H.end(), back_inserter (h_sum));
    cout << count_if (h_sum.begin(), h_sum.end(), [M] (int h) {
        return h <= M;
    }) << endl;
    return 0;
}