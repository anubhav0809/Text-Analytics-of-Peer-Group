#include<cstdio>
#include<fstream>
#include <string>
#include <regex>
#include<iostream>
#include<algorithm>
using namespace std;

int main()
{
    string line;
    ifstream in("cleaned.txt");
    if( !in.is_open())
    {
          cout << "Input file failed to open\n";
          return 1;
    }
    ofstream out("Portugal.txt");
    while( getline(in,line) )
    {
        if(line.find("+351 926 323 155") != string::npos)
            out << line << "\n";
        else
            continue;
    }
    in.close();
    out.close();

    system("./wow.sh");

    return 0;
}