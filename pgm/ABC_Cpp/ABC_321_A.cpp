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
    string str;
    cin >> str;
    const string Yes = "Yes";
    const string No = "No";
    int size = str.size();
    int N[size];
    for (int i = 0; i < size; i++) {
        N[i] = str.at (i) - '0';
    }
    int pre = 10;
    bool decrease_flg = true;
    for (int i = 0; i < size; i++) {
        if (N[i] >= pre) {
            decrease_flg = false;
            break;
        }
        pre = N[i];
    }
    cout << (decrease_flg ? Yes : No) << endl;
    return 0;
}