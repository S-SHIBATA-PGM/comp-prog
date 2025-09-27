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

int factorial (int n) {
    if (n > 0)
        return n * factorial (n - 1);
    else
        return 1;
}

int main() {
    string S;
    cin >> S;
    map<char, int> m;
    for (int i = 0; i < S.size(); i++) {
        m[S.at (i)]++;
    }
    int divisor = 1;
    for (auto it = m.begin(); it != m.end(); ++it) {
        divisor *= factorial (it->second);
    }
    cout << factorial (S.size()) / divisor << endl;
    return 0;
}