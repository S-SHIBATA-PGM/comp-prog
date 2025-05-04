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

template<typename Cont, typename Pred>
Cont filter (const Cont& container, Pred predicate) {
    Cont result;
    std::copy_if (container.begin(), container.end(),
                  std::back_inserter (result), predicate);
    return result;
}

int main() {
    int N, X;
    cin >> N >> X;
    vector<int> S;
    REP (i, N) {
        cin >> S.emplace_back();
    }
    const auto f = filter (S, [X] (int s) { return s <= X; });
    cout << ALL (reduce, f) << endl;
    return 0;
}