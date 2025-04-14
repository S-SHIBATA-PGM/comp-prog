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
    string N;
    cin >> N;
    const string Yes = "Yes";
    const string No = "No";
    const char zero = '0';
    const char one = '1';
    const char two = '2';
    const char three = '3';
    map<char, int> cnt;
    cnt[one] = 0;
    cnt[two] = 0;
    cnt[three] = 0;
    REP (i, (int)N.size()) {
        if (N.at (i) == one) {
            cnt[one]++;
        } else if (N.at (i) == two) {
            cnt[two]++;
        } else if (N.at (i) == three) {
            cnt[three]++;
        }
    }
    cout << (cnt[one] == int (one - zero) && cnt[two] == int (two - zero) &&
                     cnt[three] == int (three - zero)
                 ? Yes
                 : No)
         << endl;
    return 0;
}