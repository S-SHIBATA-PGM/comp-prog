#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    string S;
    cin >> S;
    constexpr string_view yn = "\n";
    constexpr char c_t = 't';
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int three = 3;
    constexpr int seventeen = 17;
    constexpr int zero = 0;
    double max_val = 0.0;
    vector<int> index;
    int length = S.length();
    REP (i, length) {
        if (S[i] == c_t) {
            index.push_back (i);
        }
    }
    if (index.size() < three) {
        cout << fixed << setprecision (seventeen) << max_val << yn;
        return 0;
    }
    int size = index.size();
    REP (l, size) {
        FOR (r, l + two, size) {
            int left = index[l];
            int right = index[r];
            int len = right - left + one;
            int cnt = r - l + one;
            if (len >= three && cnt >= three) {
                double rate = (double)(cnt - two) / (len - two);
                max_val = max (max_val, rate);
            }
        }
    }
    cout << fixed << setprecision (seventeen) << max_val << yn;
    return 0;
}