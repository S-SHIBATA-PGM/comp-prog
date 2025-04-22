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
    int N, K;
    cin >> N >> K;
    int T[N];
    REP (i, N) {
        cin >> T[i];
    }
    string s = "";
    FOR (i, N - K, N) {
        cout << s << T[i];
        s = " ";
    }
    FOR (i, 0, N - K) {
        cout << s << T[i];
    }
    cout << endl;
    return 0;
}