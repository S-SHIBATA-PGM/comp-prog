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
    int N;
    string S;
    cin >> N >> S;
    const char sharp = '#';
    const char dot = '.';
    int cnt = 0;
    const char* s = S.c_str();
    REP (i, N - 2) {
        if (s[i] == sharp && s[i + 1] == dot && s[i + 2] == sharp) {
            cnt++;
        }
    }
    cout << cnt << endl;
    return 0;
}