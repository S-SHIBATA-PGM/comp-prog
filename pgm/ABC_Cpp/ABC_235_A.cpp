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
    string abc;
    cin >> abc;
    const int one = 1;
    const int two = 2;
    const int zero = 0;
    string a, b, c;
    a = abc.at (zero);
    b = abc.at (one);
    c = abc.at (two);
    string bca, cab;
    bca.append (b).append (c).append (a);
    cab.append (c).append (a).append (b);
    cout << stoi (abc) + stoi (bca) + stoi (cab) << endl;
    return 0;
}