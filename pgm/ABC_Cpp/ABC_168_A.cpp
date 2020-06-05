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
    vector<int> arrHon = {2, 4, 5, 7, 9};
    vector<int> arrPon = {0, 1, 6, 8};
    if (ALL (find, arrHon, N % 10) != end (arrHon)) {
        cout << "hon" << endl;
        return 0;
    }
    if (ALL (find, arrPon, N % 10) != end (arrPon)) {
        cout << "pon" << endl;
        return 0;
    }
    cout << "bon" << endl;
    return 0;
}
