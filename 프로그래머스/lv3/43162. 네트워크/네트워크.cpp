#include <string>
#include <vector>

using namespace std;

bool isVisited[202];

void DFS(const int& n, const vector<vector<int>>& computers, int now)
{
    isVisited[now] = true;
    for(int next = 0; next < n; ++next)
    {
        if(now == next)
            continue;
        
        if(isVisited[next])
            continue;
        
        if(computers[now][next])
            DFS(n, computers, next);
    }
}

int solution(int n, vector<vector<int>> computers) 
{
    int netCnt = 0;
    for(int now = 0; now < n; ++now)
    {
        if(isVisited[now])
            continue;
        
        DFS(n, computers, now);
        ++netCnt;
    }
    
    return netCnt;
}