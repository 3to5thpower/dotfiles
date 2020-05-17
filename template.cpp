#include<cstdint>
#include<iostream>
#include<cstdio>
#include<algorithm>
#include<cmath>
#include<vector>
#include<set>
#include<map>
#include<queue>
#include<deque>
#include<stack>
#include<iterator>
#include<stack>
#include<cctype>
#include<climits>
#include<string>
#include<bitset>
#include<cfloat>
#include<iomanip>
#include<numeric>
#include<utility>
#include<initializer_list>


#define repi(i,start,end)for(int64_t (i)=(start);(i)<(end);++(i))
#define rep(i,end) repi((i),0,(end))
#define rfor(x, v) for(auto& (x) : (v))
#define iterate(itr, v) for(auto (itr)=(v).begin();(itr)!=(v).end();++(itr))
#define all(x) (x).begin(),(x).end()
#define rall(x) (x).rbegin(),(x).rend()
#define vin(v) rep(i,(v).size()) cin >> (v)[i];
#define vpin(v) rep(i,(v).size()) cin >> (v)[i].first >> (v)[i].second

using namespace std;
using Int = int64_t;
using pint = pair<Int, Int>;
using vint = vector<Int>;
using vvint = vector<vint>;
using vpint = vector<pint>;
using vstr = vector<string>;

template<class T>bool chmax(T &a, const T &b) { if (a<b) { a=b; return 1;  } return 0;  }
template<class T>bool chmin(T &a, const T &b) { if (b<a) { a=b; return 1;  } return 0;  }
template<class T>void put_double(T a){cout<<setprecision(12);cout<<a<<"\n";}
template<class T>void println(T a){cout << a << "\n";}
template<class T>void put_line(T &v){iterate(itr,v){cout<<*itr<<((itr==--v.end())?"\n":" ");}}
// auto [x, y] = make_tuple(3, 4); => let (x, y) = (3, 4);

int main(void) {


    return 0;
}
