#include <string>
#include <vector>

using namespace std;

string ConvertBinary(int len)
{
    string str;
    while(len)
    {
        str += static_cast<char>((len % 2) + '0');
        len /= 2;
    }
    return str;
}

vector<int> solution(string s) 
{
    int tryCnt = 0;
    int killCnt = 0;
    while(s != "1")
    {
        int aliveCnt = 0;
        for(size_t i = 0; i < s.size(); ++i)
        {
            if(s[i] == '1')
                ++aliveCnt;
            else
                ++killCnt;
        }
        
        s = ConvertBinary(aliveCnt);
        ++tryCnt;
    }
    
    vector<int> vecAnswer(2);
    vecAnswer[0] = tryCnt;
    vecAnswer[1] = killCnt;
    
    return vecAnswer;
}