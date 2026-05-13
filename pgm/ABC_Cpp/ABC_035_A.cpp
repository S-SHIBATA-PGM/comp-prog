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
    int W, H;
    cin >> W >> H;
    const string aspect_ratio_43 = "4:3";
    const string aspect_ratio_169 = "16:9";
    const int three = 3;
    const int four = 4;
    cout << (W * three == H * four ? aspect_ratio_43 : aspect_ratio_169)
         << endl;
    return 0;
}