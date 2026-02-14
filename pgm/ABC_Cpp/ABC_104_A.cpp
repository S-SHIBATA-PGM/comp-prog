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
    int R;
    cin >> R;
    const string AGC = "AGC";
    const vector<pair<int, string>> Rating = {{1200, "ABC"}, {2800, "ARC"}};
    string Contest = AGC;
    for (const auto& [r, c] : Rating) {
        if (r > R) {
            Contest = c;
            break;
        }
    }
    cout << Contest << endl;
    return 0;
}