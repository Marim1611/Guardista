#include <iostream>
using namespace std;


int dummy_function(int x)
{
    if (x == 132310)
    {
        cout<<"hellooooo i am dummy as fuck"<<endl;
    }
    return x;
};


int main()

{

    int x = 50;
    int y = 20;

    switch (x)
    {
    case 30:
        /* code */
        y = 50;
        cout<<y<<endl;
        cout<<"x = 30"<<endl;
        break;
    case 20:
        y += 50;
        cout<<y<<endl;
        cout<<"x = 20"<<endl;
    case 50:
        y *= 50;
        cout<<y<<endl;
        cout<<"x = 50"<<endl;
    default:
        cout<<"default"<<endl;
        break;
    }



    return 0;
}