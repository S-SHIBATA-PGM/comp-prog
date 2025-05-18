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
    string dot = ".";
    string bar = "|";
    string ast = "*";
    string in = "in";
    string out = "out";
    string reg = "\\";
    reg.append (bar);
    reg.append ("\\");
    reg.append (dot);
    reg.append ("*\\");
    reg.append (ast);
    reg.append ("\\");
    reg.append (dot);
    reg.append ("*\\");
    reg.append (bar);
    regex pattern (reg);
    cout << (regex_search (S, pattern) ? in : out) << endl;
    return 0;
}