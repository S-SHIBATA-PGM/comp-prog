#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    int N, Q;
    cin >> N >> Q;
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    vector<int> X (Q);
    REP (i, Q) {
        cin >> X[i];
    }
    vector<int> box (N + one, zero);
    REP (i, Q) {
        if (i > zero) {
            cout << space;
        }
        int x = X[i];
        if (x >= one) {
            box[x]++;
            cout << x;
        } else {
            int min_idx = one;
            int cnt = box[one];
            FOR (j, two, N + one) {
                if (box[j] < cnt) {
                    cnt = box[j];
                    min_idx = j;
                }
            }
            box[min_idx]++;
            cout << min_idx;
        }
    }
    cout << yn;
    return 0;
}