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
    string S[N];
    REP (i, N) {
        cin >> S[i];
    }
    const string Yes = "Yes";
    const string No = "No";
    const string sweet = "sweet";
    int cnt = 0;
    REP (i, N) {
        if (i != N - 1 && cnt == 1 && S[i] == sweet) {
            cout << No << endl;
            return 0;
        } else if (S[i] == sweet) {
            cnt = 1;
        } else {
            cnt = 0;
        }
    }
    cout << Yes << endl;
    return 0;
}