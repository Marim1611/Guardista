/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE126_Buffer_Overread__wchar_t_alloca_loop_07.c
Label Definition File: CWE126_Buffer_Overread.stack.label.xml
Template File: sources-sink-07.tmpl.c
*/
/*
 * @description
 * CWE: 126 Buffer Over-read
 * BadSource:  Set data pointer to a small buffer
 * GoodSource: Set data pointer to a large buffer
 * Sink: loop
 *    BadSink : Copy data to string using a loop
 * Flow Variant: 07 Control flow: if(staticFive==5) and if(staticFive!=5)
 *
 * */

#include <string>
#include <iostream>
#define ALLOCA _alloca
#include <wchar.h>

/* The variable below is not declared "const", but is never assigned
 * any other value so a tool should be able to identify that reads of
 * this will always give its initialized value.
 */
static int staticFive = 5;


void CWE126_Buffer_Overread__wchar_t_alloca_loop_07_bad()
{
    #define ALLOCA _alloca
    wchar_t * data;
    wchar_t * dataBadBuffer = (wchar_t *)ALLOCA(50*sizeof(wchar_t));
    wchar_t * dataGoodBuffer = (wchar_t *)ALLOCA(100*sizeof(wchar_t));
    wmemset(dataBadBuffer, L'A', 50-1); /* fill with 'A's */
    dataBadBuffer[50-1] = L'\0'; /* null terminate */
    wmemset(dataGoodBuffer, L'A', 100-1); /* fill with 'A's */
    dataGoodBuffer[100-1] = L'\0'; /* null terminate */
    if(staticFive==5)
    {
        /* FLAW: Set data pointer to a small buffer */
        data = dataBadBuffer;
    }
    {
        size_t i, destLen;
        wchar_t dest[100];
        wmemset(dest, L'C', 100-1);
        dest[100-1] = L'\0'; /* null terminate */
        destLen = wcslen(dest);
        /* POTENTIAL FLAW: using length of the dest where data
         * could be smaller than dest causing buffer overread */
        for (i = 0; i < destLen; i++)
        {
            dest[i] = data[i];
        }
        dest[100-1] = L'\0';
        
    }
}


/* goodG2B1() - use goodsource and badsink by changing the staticFive==5 to staticFive!=5 */
static void goodG2B1()
{
    #define ALLOCA _alloca
    wchar_t * data;
    wchar_t * dataBadBuffer = (wchar_t *)ALLOCA(50*sizeof(wchar_t));
    wchar_t * dataGoodBuffer = (wchar_t *)ALLOCA(100*sizeof(wchar_t));
    wmemset(dataBadBuffer, L'A', 50-1); /* fill with 'A's */
    dataBadBuffer[50-1] = L'\0'; /* null terminate */
    wmemset(dataGoodBuffer, L'A', 100-1); /* fill with 'A's */
    dataGoodBuffer[100-1] = L'\0'; /* null terminate */
    if(staticFive!=5)
    {
        /* INCIDENTAL: CWE 561 Dead Code, the code below will never run */
        std::cout<<"lol";
    }
    else
    {
        /* FIX: Set data pointer to a large buffer */
        data = dataGoodBuffer;
    }
    {
        size_t i, destLen;
        wchar_t dest[100];
        wmemset(dest, L'C', 100-1);
        dest[100-1] = L'\0'; /* null terminate */
        destLen = wcslen(dest);
        /* POTENTIAL FLAW: using length of the dest where data
         * could be smaller than dest causing buffer overread */
        for (i = 0; i < destLen; i++)
        {
            dest[i] = data[i];
        }
        dest[100-1] = L'\0';
        
    }
}

/* goodG2B2() - use goodsource and badsink by reversing the blocks in the if statement */
static void goodG2B2()
{
    #define ALLOCA _alloca
    wchar_t * data;
    wchar_t * dataBadBuffer = (wchar_t *)ALLOCA(50*sizeof(wchar_t));
    wchar_t * dataGoodBuffer = (wchar_t *)ALLOCA(100*sizeof(wchar_t));
    wmemset(dataBadBuffer, L'A', 50-1); /* fill with 'A's */
    dataBadBuffer[50-1] = L'\0'; /* null terminate */
    wmemset(dataGoodBuffer, L'A', 100-1); /* fill with 'A's */
    dataGoodBuffer[100-1] = L'\0'; /* null terminate */
    if(staticFive==5)
    {
        /* FIX: Set data pointer to a large buffer */
        data = dataGoodBuffer;
    }
    {
        size_t i, destLen;
        wchar_t dest[100];
        wmemset(dest, L'C', 100-1);
        dest[100-1] = L'\0'; /* null terminate */
        destLen = wcslen(dest);
        /* POTENTIAL FLAW: using length of the dest where data
         * could be smaller than dest causing buffer overread */
        for (i = 0; i < destLen; i++)
        {
            dest[i] = data[i];
        }
        dest[100-1] = L'\0';
        
    }
}

void CWE126_Buffer_Overread__wchar_t_alloca_loop_07_good()
{
    goodG2B1();
    goodG2B2();
}

/* Below is the main(). It is only used when building this testcase on
 * its own for testing or for building a binary to use in testing binary
 * analysis tools. It is not used when compiling all the testcases as one
 * application, which is how source code analysis tools are tested.
 */


int main(int argc, char * argv[])
{
    
    CWE126_Buffer_Overread__wchar_t_alloca_loop_07_good();
    
    CWE126_Buffer_Overread__wchar_t_alloca_loop_07_bad();
    
    return 0;
}
