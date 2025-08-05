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
    int A, B, C, D, E, F, X;
    cin >> A >> B >> C >> D >> E >> F >> X;
    const string Takahashi = "Takahashi";
    const string Aoki = "Aoki";
    const string Draw = "Draw";
    const int takahashi_distance =
        B * A * (X / (A + C)) + B * min (A, X % (A + C));
    const int aoki_distance = E * D * (X / (D + F)) + E * min (D, X % (D + F));
    if (takahashi_distance > aoki_distance) {
        cout << Takahashi << endl;
    } else if (takahashi_distance < aoki_distance) {
        cout << Aoki << endl;
    } else {
        cout << Draw << endl;
    }
    return 0;
}