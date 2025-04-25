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

struct RGB {
    string key;
    int value;

    RGB() {
    }

    RGB (string k, int v) {
        key = k;
        value = v;
    }

    bool operator< (const RGB& rgb) const {
        return value < rgb.value;
    }
};

int main() {
    int R, G, B;
    cin >> R >> G >> B;
    string C;
    cin >> C;
    const string Red = "Red";
    const string Green = "Green";
    const string Blue = "Blue";

    struct RGB rgb;
    vector<RGB> vec;
    rgb.key = Red;
    rgb.value = R;
    vec.push_back (rgb);
    rgb.key = Green;
    rgb.value = G;
    vec.push_back (rgb);
    rgb.key = Blue;
    rgb.value = B;
    vec.push_back (rgb);

    vector<RGB> v;

    copy_if (vec.begin(), vec.end(), std::back_inserter (v),
             [&C] (const RGB& r) { return r.key != C; });

    ALL (sort, v);

    cout << v.at (0).value << endl;
    return 0;
}