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
    int A, B;
    cin >> A >> B;
    const string Yes = "Yes";
    const string No = "No";
    // 右、左
    const int drn = 2;
    int dy[drn] = {0, 0};
    int dx[drn] = {1, -1};
    const int H = 3;
    const int W = 3;
    int Nine[H][W] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    bool break_flg = false;
    string ans = No;
    for (int y = 0; y < H; y++) {
        if (break_flg)
            break;
        for (int x = 0; x < W; x++) {
            if (break_flg)
                break;
            if (Nine[y][x] == A) {
                for (int k = 0; k < drn; k++) {
                    if (break_flg)
                        break;
                    int ny = y + dy[k];
                    int nx = x + dx[k];
                    if (ny < 0 || H <= ny || nx < 0 || W <= nx)
                        continue;
                    if (Nine[ny][nx] == B) {
                        break_flg = true;
                        ans = Yes;
                    }
                }
                break_flg = true;
            }
        }
    }
    cout << ans << endl;
    return 0;
}