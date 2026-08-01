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

int main() {
    ios::sync_with_stdio (false);
    cin.tie (nullptr);
    string S;
    cin >> S;
    constexpr string_view red = "red";
    constexpr string_view blue = "blue";
    constexpr string_view green = "green";
    constexpr string_view SSS = "SSS";
    constexpr string_view FFF = "FFF";
    constexpr string_view MMM = "MMM";
    constexpr string_view Unknown = "Unknown";
    constexpr string_view yn = "\n";
    const unordered_map<string_view, string_view> language = {
        {red, SSS}, {blue, FFF}, {green, MMM}};
    cout << [&] {
        auto it = language.find (S);
        return it != language.end() ? it->second : Unknown;
    }() << yn;
    return 0;
}