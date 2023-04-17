#include <iostream>

class AymanStupid
{

    private:
        int aymanpriv = 0;
    
    public:
        AymanStupid()
        {
            this->aymanpriv++;
            std::cout<<aymanpriv<<std::endl;
        }
};


int main()
{

    AymanStupid anaymooon;
    return 0;
}