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
    int N;
    cin >> N;
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int two = 2;
    constexpr int zero = 0;
    vector<vector<int>> a (N, vector<int> (N, zero));
    int y = zero;
    int x = (N - one) / two;
    int k = one;
    a[y][x] = k;
    int limit = N * N - one;
    REP (i, limit) {
        k++;
        int next_y = (y - one + N) % N;
        int next_x = (x + one) % N;
        if (a[next_y][next_x] == zero) {
            y = next_y;
            x = next_x;
            a[y][x] = k;
        } else {
            y = (y + one) % N;
            a[y][x] = k;
        }
    }
    REP (y, N) {
        REP (x, N) {
            if (x > zero) {
                cout << space;
            }
            cout << a[y][x];
        }
        cout << yn;
    }
    return 0;
}