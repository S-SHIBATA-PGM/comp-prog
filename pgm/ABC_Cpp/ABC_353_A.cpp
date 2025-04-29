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
    vector<int> H;
    REP (i, N) {
        cin >> H.emplace_back();
    }
    const int no = -1;
    auto itr = find_if (H.begin(), H.end(), [H] (int h) { return h > H[0]; });
    cout << (itr != H.end() ? distance (H.begin(), itr) + 1 : no) << endl;
    return 0;
}