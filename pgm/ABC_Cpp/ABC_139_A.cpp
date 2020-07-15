#include <bits/stdc++.h>
#include <boost/range/combine.hpp>

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

template<typename... T>
auto zip (T&&... containers) -> boost::iterator_range<
    boost::zip_iterator<decltype (boost::make_tuple (begin (containers)...))>> {
    auto zip_begin =
        boost::make_zip_iterator (boost::make_tuple (begin (containers)...));
    auto zip_end =
        boost::make_zip_iterator (boost::make_tuple (end (containers)...));
    return boost::make_iterator_range (zip_begin, zip_end);
}

int main() {
    string S, T;
    cin >> S >> T;
    int ans = 0;
    for (auto v : zip (S, T)) {
        char s, t;
        boost::tie (s, t) = v;
        if (s == t)
            ans++;
    }
    cout << ans << endl;
    return 0;
}