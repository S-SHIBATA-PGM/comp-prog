#include <bits/stdc++.h>

#define __STDC_FORMAT_MACROS
#define p64 PRId64

#define FOR(i, a, b) for (int i = (a); i < (b); ++i)
#define REP(i, n) FOR (i, 0, n)
#define ALL(f, x, ...)                                                         \
    ([&] (decltype ((x)) ALL) {                                                \
        return (f) (begin (ALL), end (ALL), ##__VA_ARGS__);                    \
    }) (x)

using namespace std;
using ll = int64_t;

template<typename Cont, typename Pred>
Cont filter (const Cont& container, Pred predicate) {
    Cont result;
    std::copy_if (container.begin(), container.end(),
                  std::back_inserter (result), predicate);
    return result;
}

int main() {
    string S;
    cin >> S;
    std::vector<char> v;
    REP (i, S.size()) {
        v.push_back (S[i]);
    }
    const auto f = filter (v, [] (char c) { return c == '2'; });
    for (auto& a : f) {
        cout << a;
    }
    cout << endl;
    return 0;
}