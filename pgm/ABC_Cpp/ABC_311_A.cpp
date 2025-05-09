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
    string S;
    cin >> N >> S;
    const char A = 'A';
    const char B = 'B';
    int a = 0;
    int b = 0;
    int c = 0;
    for (int i = 0; i < N; i++) {
        if (S.at (i) == A) {
            a++;
        } else if (S.at (i) == B) {
            b++;
        } else {
            c++;
        }
        if (a > 0 && b > 0 && c > 0) {
            cout << i + 1 << endl;
            break;
        }
    }
    return 0;
}