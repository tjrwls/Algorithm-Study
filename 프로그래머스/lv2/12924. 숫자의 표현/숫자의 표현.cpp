#include <string>
#include <vector>
#include <queue>

using namespace std;

int solution(int n) 
{
    int cnt = 0;
    int sum = 0;
    queue<int> q;
    
    for(int num = 1; num <= n; ++num)
    {
        sum += num;
        q.push(num);
        
       // if(sum == n)
         //   ++cnt;
            
        while(n < sum)
        {
            sum -= q.front();
            q.pop();
        }
        
        if(sum == n)
            ++cnt;
    }
    
    return cnt;
}


//2~6 : 20
//3~6 : 18
//4~6 : 15 +

//4~7 : 23
//5~7 : 18