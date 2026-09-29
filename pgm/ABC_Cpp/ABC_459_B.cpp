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
    constexpr string_view yn = "\n";
    constexpr char c_a = 'a';
    constexpr char c_d = 'd';
    constexpr char c_g = 'g';
    constexpr char c_j = 'j';
    constexpr char c_m = 'm';
    constexpr char c_p = 'p';
    constexpr char c_t = 't';
    constexpr char c_w = 'w';
    constexpr int two = 2;
    constexpr int three = 3;
    constexpr int four = 4;
    constexpr int five = 5;
    constexpr int six = 6;
    constexpr int seven = 7;
    constexpr int eight = 8;
    constexpr int nine = 9;
    constexpr int zero = 0;
    const map<char, int> C = {{c_a, two},   {c_d, three}, {c_g, four},
                              {c_j, five},  {c_m, six},   {c_p, seven},
                              {c_t, eight}, {c_w, nine}};
    REP (i, N) {
        string S;
        cin >> S;
        char first_char = S[zero];
        map<char, int>::const_iterator it = C.upper_bound (first_char);
        --it;
        cout << it->second;
    }
    cout << yn;
    return 0;
}