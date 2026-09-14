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
    char X;
    cin >> N >> X;
    constexpr string_view yes = "Yes";
    constexpr string_view no = "No";
    constexpr string_view yn = "\n";
    constexpr char c_circle = 'o';
    constexpr char c_A = 'A';
    const int target = X - c_A;
    bool has_circle = false;
    REP (i, N) {
        string S;
        cin >> S;
        if (S[target] == c_circle) {
            has_circle = true;
            break;
        }
    }
    cout << (has_circle ? yes : no) << yn;
    return 0;
}