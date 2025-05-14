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
    string S, T;
    cin >> S >> T;
    const char one = '1';
    const char l = 'l';
    const char zero = '0';
    const char o = 'o';
    const string Yes = "Yes";
    const string No = "No";
    bool match = true;
    for (int i = 0; i < N; i++) {
        if (S[i] != T[i] &&
            (min (S[i], T[i]) != one || max (S[i], T[i]) != l) &&
            (min (S[i], T[i]) != zero || max (S[i], T[i]) != o)) {
            match = false;
            break;
        }
    }
    cout << (match ? Yes : No) << endl;
    return 0;
}