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
    int N, K;
    cin >> N >> K;
    constexpr string_view yn = "\n";
    constexpr int ten = 10;
    constexpr int hundred = 100;
    constexpr int thousand = 1000;
    constexpr int tenThousand = 10000;
    constexpr int hundredThousand = 100000;
    constexpr int zero = 0;
    int cnt = zero;
    FOR (i, zero, N + 1) {
        int num = i;
        int hundredThousandsPlace = num / hundredThousand;
        num -= hundredThousandsPlace * hundredThousand;
        int tenThousandsPlace = num / tenThousand;
        num -= tenThousandsPlace * tenThousand;
        int thousandsPlace = num / thousand;
        num -= thousandsPlace * thousand;
        int hundredsPlace = num / hundred;
        num -= hundredsPlace * hundred;
        int tensPlace = num / ten;
        num -= tensPlace * ten;
        int onesPlace = num;
        if (hundredThousandsPlace + tenThousandsPlace + thousandsPlace +
                hundredsPlace + tensPlace + onesPlace ==
            K) {
            cnt++;
        }
    }
    cout << cnt << yn;
    return 0;
}