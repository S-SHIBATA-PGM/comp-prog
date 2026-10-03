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
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int three = 3;
    constexpr int four = 4;
    constexpr int five = 5;
    constexpr int six = 6;
    constexpr int ten = 10;
    constexpr int zero = 0;
    constexpr int pattern = six * six * six;
    vector<vector<int>> dice (three, vector<int> (six));
    REP (i, three) {
        REP (j, six) {
            cin >> dice[i][j];
        }
    }
    int cnt = 0;
    REP (i, six) {
        REP (j, six) {
            REP (k, six) {
                array<int, three> curr = {dice[zero][i], dice[one][j],
                                          dice[two][k]};
                ALL (sort, curr);
                if (curr[zero] == four && curr[one] == five &&
                    curr[two] == six) {
                    cnt++;
                }
            }
        }
    }
    cout << fixed << setprecision (ten) << static_cast<double> (cnt) / pattern
         << yn;
    return 0;
}