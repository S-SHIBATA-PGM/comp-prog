#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    int N;
    cin >> N;
    vector<int> A (N, 0);
    REP (i, N) cin >> A[i];
    string Yes = "Yes";
    string No = "No";
    int cnt = 0;
    int pre = -1;
    int times = 3;
    FOR (i, 0, N) {
        if (pre == A[i]) {
            cnt++;
            if (times == cnt) {
                cout << Yes << endl;
                return 0;
            }
        } else {
            cnt = 1;
            pre = A[i];
        }
    }
    cout << No << endl;
    return 0;
}