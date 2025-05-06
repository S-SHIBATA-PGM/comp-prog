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
    string S;
    cin >> S;
    map<string, int> legendary_players;
    legendary_players["tourist"] = 3858;
    legendary_players["ksun48"] = 3679;
    legendary_players["Benq"] = 3658;
    legendary_players["Um_nik"] = 3648;
    legendary_players["apiad"] = 3638;
    legendary_players["Stonefeang"] = 3630;
    legendary_players["ecnerwala"] = 3613;
    legendary_players["mnbvmar"] = 3555;
    legendary_players["newbiedmy"] = 3516;
    legendary_players["semiexp"] = 3481;
    cout << legendary_players[S] << endl;
    return 0;
}