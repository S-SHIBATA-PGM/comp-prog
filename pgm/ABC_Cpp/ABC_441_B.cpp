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
    string S, T;
    cin >> S >> T;
    int Q;
    cin >> Q;
    constexpr string_view Takahashi = "Takahashi";
    constexpr string_view Aoki = "Aoki";
    constexpr string_view Unknown = "Unknown";
    constexpr string_view yn = "\n";
    constexpr char cA = 'a';
    constexpr char cZ = 'z';
    constexpr int one = 1;
    constexpr int zero = 0;
    constexpr int alp = cZ - cA + one;
    vector<bool> t_language (alp, false);
    vector<bool> a_language (alp, false);
    REP (i, N) {
        int idx = S[i] - cA;
        t_language[idx] = !t_language[idx];
    }
    REP (i, M) {
        int idx = T[i] - cA;
        a_language[idx] = !a_language[idx];
    }
    REP (i, Q) {
        string w;
        cin >> w;
        int len = static_cast<int> (w.length());
        bool done_flg = false;
        bool is_t_language = true;
        bool is_a_language = true;
        REP (j, len) {
            int idx = w[j] - cA;
            if (is_t_language) {
                is_t_language = t_language[idx];
            }
            if (is_a_language) {
                is_a_language = a_language[idx];
            }
            if (!is_t_language && !is_a_language) {
                cout << Unknown << yn;
                done_flg = true;
                break;
            }
        }
        if (!done_flg) {
            if (is_t_language && !is_a_language) {
                cout << Takahashi << yn;
            } else if (!is_t_language && is_a_language) {
                cout << Aoki << yn;
            } else {
                cout << Unknown << yn;
            }
        }
    }
    return 0;
}