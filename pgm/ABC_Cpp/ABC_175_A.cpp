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
    vector<string> vec =
        S | views::transform ([] (char c) { return string (1, c); }) |
        ranges::to<vector<string>>();
    const string R = "R";
    const int one = 1;
    const int zero = 0;
    int num, cnt;
    num = zero;
    cnt = zero;
    for (int i = zero; i < (int)vec.size(); i++) {
        if (vec.at (i) == R) {
            num += one;
        } else {
            cnt = max (cnt, num);
            num = zero;
        }
    }
    cout << max (cnt, num) << endl;
    return 0;
}