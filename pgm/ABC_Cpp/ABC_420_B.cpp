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
    int N, M;
    cin >> N >> M;
    vector<string> S (N);
    REP (i, N) {
        cin >> S[i];
    }
    constexpr string_view yn = "\n";
    constexpr string_view space = " ";
    constexpr char c_one = '1';
    constexpr char c_zero = '0';
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<int> score (N, zero);
    REP (j, M) {
        int x = zero;
        REP (i, N) {
            if (S[i][j] == c_zero) {
                x++;
            }
        }
        int y = N - x;
        REP (i, N) {
            char vote = S[i][j];
            if (x == zero || y == zero) {
                score[i]++;
            } else if (x < y && vote == c_zero) {
                score[i]++;
            } else if (y < x && vote == c_one) {
                score[i]++;
            }
        }
    }
    int max_score = zero;
    for (int s : score) {
        max_score = max (max_score, s);
    }
    vector<string> candidate;
    REP (i, N) {
        if (score[i] == max_score) {
            candidate.push_back (to_string (i + one));
        }
    }
    REP (i, candidate.size()) {
        if (i > zero) {
            cout << space;
        }
        cout << candidate[i];
    }
    cout << yn;
    return 0;
}