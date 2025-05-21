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
    string M = "M";
    string F = "F";
    const string Yes = "Yes";
    const string No = "No";
    if (S.find (M.append (M)) != string::npos ||
        S.find (F.append (F)) != string::npos) {
        cout << No << endl;
    } else {
        cout << Yes << endl;
    }
    return 0;
}