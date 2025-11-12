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
    string buff;
    getline (cin, buff);
    const string text = buff;
    const char delimiter = ' ';
    const int one = 1;
    const int three = 3;
    const int zero = 0;
    int ABC[three];
    stringstream stream {text};
    int i = zero;
    while (getline (stream, buff, delimiter)) {
        ABC[i] = stoi (buff);
        i++;
    }
    ALL (sort, ABC, greater<int>());
    cout << ABC[zero] + ABC[one] << endl;
    return 0;
}