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
    string S;
    cin >> S;
    const char T = 'T';
    const char A = 'A';
    const int most = max (ALL (count, S, T), ALL (count, S, A));
    for (int i = 0, t = 0, a = 0; i < N; i++) {
        if (S[i] == T) {
            t++;
        } else {
            a++;
        }
        if (t >= most) {
            cout << T << endl;
            break;
        } else if (a >= most) {
            cout << A << endl;
            break;
        }
    }
    return 0;
}