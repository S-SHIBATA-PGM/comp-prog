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
    int N;
    cin >> N;
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<vector<int>> receive (N + one);
    FOR (i, one, N + one) {
        int K;
        cin >> K;
        REP (j, K) {
            int A;
            cin >> A;
            receive[A].push_back (i);
        }
    }
    FOR (i, one, N + one) {
        cout << receive[i].size();
        for (int from : receive[i]) {
            cout << " " << from;
        }
        cout << yn;
    }
    return 0;
}