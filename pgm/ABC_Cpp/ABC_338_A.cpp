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
    string S;
    cin >> S;
    const string Yes = "Yes";
    const string No = "No";
    int size = S.size();
    if (islower (S[0])) {
        cout << No << endl;
        return 0;
    } else {
        FOR (i, 1, size) {
            if (isupper (S[i])) {
                cout << No << endl;
                return 0;
            }
        }
    }
    cout << Yes << endl;
    return 0;
}