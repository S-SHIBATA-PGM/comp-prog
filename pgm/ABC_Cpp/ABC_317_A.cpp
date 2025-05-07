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
    int N, H, X;
    cin >> N >> H >> X;
    vector<int> P;
    REP (i, N) {
        cin >> P.emplace_back();
    }
    const int no = -1;
    auto itr =
        find_if (P.begin(), P.end(), [H, X] (int p) { return p + H >= X; });
    cout << (itr != P.end() ? distance (P.begin(), itr) + 1 : no) << endl;
    return 0;
}