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
    const string const_and = "and";
    const string const_not = "not";
    const string that = "that";
    const string the = "the";
    const string you = "you";
    const string Yes = "Yes";
    const string No = "No";
    const string keyword[] = {const_and, const_not, that, the, you};
    if (any_of (S, S + N, [keyword] (string s) {
            return s == keyword[0] || s == keyword[1] || s == keyword[2] ||
                   s == keyword[3] || s == keyword[4];
        })) {
        cout << Yes << endl;
    } else {
        cout << No << endl;
    }
    return 0;
}