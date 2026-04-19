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
    string s1, s2, s3;
    cin >> s1 >> s2 >> s3;
    const int one = 1;
    cout << (string (one, toupper (s1.front()))
                 .append (string (one, toupper (s2.front())))
                 .append (string (one, toupper (s3.front()))))
         << endl;
    return 0;
}