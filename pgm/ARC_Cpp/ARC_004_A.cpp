// Ref ABC 234 B
// Ref ARC 004 A
#define _CRT_SECURE_NO_WARNINGS
#include <algorithm>
#include <cmath>
#include <cstdio>
#include <vector>

using namespace std;

double EPS = 1e-10;
const int MAX_N = 101;

// 誤差を考慮した足し算
double add (double a, double b) {
    if (abs (a + b) < EPS * (abs (a) + abs (b)))
        return 0;
    return a + b;
}

// 二次元ベクトル構造体
struct P {
    double x, y;

    P() {
    }

    P (double x, double y)
        : x (x)
        , y (y) {
    }

    P operator+ (P p) {
        return P (add (x, p.x), add (y, p.y));
    }

    P operator- (P p) {
        return P (add (x, -p.x), add (y, -p.y));
    }

    P operator* (double d) {
        return P (x * d, y * d);
    }

    // 内積
    double dot (P p) {
        return add (x * p.x, y * p.y);
    }

    // 外積
    double det (P p) {
        return add (x * p.y, -y * p.x);
    }
};

// 辞書順 比較
bool cmp_x (const P& p, const P& q) {
    if (p.x != q.x)
        return p.x < q.x;
    return p.y < q.y;
}

// 凸包
vector<P> convex_hull (P* ps, int n) {
    sort (ps, ps + n, cmp_x);

    // 凸包 頂点数
    int k = 0;

    // 凸包 構築中
    vector<P> qs (n * 2);

    // 凸包 下側
    for (int i = 0; i < n; i++) {
        while (k > 1 && (qs[k - 1] - ps[k - 2]).det (ps[i] - qs[k - 1]) <= 0)
            k--;

        qs[k++] = ps[i];
    }

    // 凸包 上側
    for (int i = n - 2, t = k; i >= 0; i--) {
        while (k > t && (qs[k - 1] - qs[k - 2]).det (ps[i] - qs[k - 1]) <= 0)
            k--;

        qs[k++] = ps[i];
    }
    qs.resize (k - 1);
    return qs;
}

// 距離の二乗
double dist (P p, P q) {
    return (p - q).dot (p - q);
}

int N;
P ps[MAX_N];

int main() {
    if (scanf ("%d", &N) < 1)
        return 0;

    for (int i = 0; i < N; i++) {
        int px, py;
        if (scanf ("%d%d", &px, &py) < 2)
            return 0;
        ps[i] = P (px, py);
    }

    vector<P> qs = convex_hull (ps, N);
    int n = qs.size();

    double res = 0;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < i; j++) {
            res = max (res, sqrt (dist (qs[i], qs[j])));
        }
    }

    printf ("%.12f\n", res);
    return 0;
}

