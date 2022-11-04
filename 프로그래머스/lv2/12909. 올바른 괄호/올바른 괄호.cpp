#include<string>
#include <iostream>
#include <stack>

using namespace std;

bool solution(string s)
{
    stack<char> st;
    for(size_t i = 0; i <s.size(); ++i)
    {
        if(s[i] == '(')
            st.push('(');
        
        else if(s[i] == ')')
        {
            if(st.empty())
                return false;
            else
                st.pop();
        }
    }

    return st.empty();
}