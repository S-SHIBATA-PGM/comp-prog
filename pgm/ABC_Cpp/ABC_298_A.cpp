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
    const char good = 'o';
    const char failing = 'x';
    const string Yes = "Yes";
    const string No = "No";
    const char* s = S.c_str();
    cout << (any_of (s, s + N, [] (char s) { return s == good; }) &&
                     none_of (s, s + N, [] (char s) { return s == failing; })
                 ? Yes
                 : No)
         << endl;
    return 0;
}