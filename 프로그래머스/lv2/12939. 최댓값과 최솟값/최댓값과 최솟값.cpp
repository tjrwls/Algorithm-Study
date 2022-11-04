#include <string>
#include <vector>
#include <algorithm>
#include <sstream>
#include <stdlib.h>

using namespace std;

vector<string> GetSplit(const string& str)
{
    stringstream st(str);
    vector<string> vecStr;
    string tmp;

    while (getline(st, tmp, ' '))
        vecStr.push_back(tmp);
    
    return vecStr;
}

string solution(string s) 
{
    vector<string> vecNum = GetSplit(s);
    int minIDX = 0;
    int maxIDX = 0;
    
    for(size_t i = 1; i < vecNum.size(); ++i)
    {   
        if(stoi(vecNum[i]) < stoi(vecNum[minIDX]))
            minIDX = i;
        
        if(stoi(vecNum[maxIDX]) < stoi(vecNum[i]))
            maxIDX = i;
    }
    
    string answer = vecNum[minIDX] + " " + vecNum[maxIDX];
    return answer;
}