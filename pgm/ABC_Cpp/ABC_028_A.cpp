#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return f (begin (ALL), end (ALL), ##__VA_ARGS__);                      \
    }) (x)

using namespace std;
using ll = int64_t;

const string Bad = "Bad";
const string Good = "Good";
const string Great = "Great";
const string Perfect = "Perfect";
const int zero = 0;
const int sixty = 60;
const int ninety = 90;
const int hundred = 100;

const map<int, string> grade = {
    {zero, Bad}, {sixty, Good}, {ninety, Great}, {hundred, Perfect}};

int main() {
    int N;
    cin >> N;
    cout << prev (grade.upper_bound (N))->second << endl;
    return 0;
}