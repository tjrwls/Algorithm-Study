#include <string>
#include <vector>
#include <sstream>

using namespace std;

string solution(string s)
{
    int cursor = 0;
    for(size_t i = 0; i < s.size(); ++i)
    {
        if(s[i] == ' ')
        {
            cursor = 0;
            continue;
        }
        
        if(cursor == 0 && 'a'<= s[i] && s[i] <= 'z')
            s[i] = static_cast<char>(s[i] - 32);
        
        else if(cursor && 'A'<= s[i] && s[i] <= 'Z')
            s[i] = static_cast<char>(s[i] + 32);
        
        ++cursor;
    }
    
    return s;
}