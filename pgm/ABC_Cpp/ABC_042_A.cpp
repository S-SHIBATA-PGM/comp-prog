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
    string line;
    getline (cin, line);
    stringstream ss (line);
    string word;
    string ABC;
    while (ss >> word) {
        ABC.append (word);
    }
    const string YES = "YES";
    const string NO = "NO";
    const int go = 5;
    const int shichi = 7;
    ALL (sort, ABC);
    cout << (ABC == format ("{:d}{:d}{:d}", go, go, shichi) ? YES : NO) << endl;
    return 0;
}