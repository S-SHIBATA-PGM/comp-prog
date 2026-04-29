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
    string c;
    cin >> c;
    const string a = "a";
    const string e = "e";
    const string i = "i";
    const string o = "o";
    const string u = "u";
    const string vowel = "vowel";
    const string consonant = "consonant";
    const string aeiou[] = {a, e, i, o, u};
    cout << (ALL (find, aeiou, c) != end (aeiou) ? vowel : consonant) << endl;
    return 0;
}