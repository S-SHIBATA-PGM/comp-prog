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
    constexpr string_view Yes = "Yes";
    constexpr string_view No = "No";
    constexpr string_view space = " ";
    constexpr string_view yn = "\n";
    constexpr int one = 1;
    constexpr int zero = 0;
    vector<int> A (N);
    REP (i, N) {
        cin >> A[i];
    }
    vector<bool> P (N + one, false);
    fill (P.begin() + one, P.end(), true);
    bool is_found = true;
    REP (i, N) {
        if (A[i] != -one) {
            if (!P[A[i]]) {
                is_found = !is_found;
                break;
            }
            P[A[i]] = !P[A[i]];
        }
    }
    if (!is_found) {
        cout << No << yn;
    } else {
        cout << Yes << yn;
        REP (i, N) {
            if (i > zero) {
                cout << space;
            }
            if (A[i] != -one) {
                cout << A[i];
            } else {
                FOR (j, one, N + one) {
                    if (P[j]) {
                        P[j] = !P[j];
                        cout << j;
                        break;
                    }
                }
            }
        }
        cout << yn;
    }
    return 0;
}