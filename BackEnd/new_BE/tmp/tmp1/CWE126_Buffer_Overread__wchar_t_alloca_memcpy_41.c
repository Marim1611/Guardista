/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41.c
Label Definition File: CWE126_Buffer_Overread.stack.label.xml
Template File: sources-sink-41.tmpl.c
*/
/*
 * @description
 * CWE: 126 Buffer Over-read
 * BadSource:  Set data pointer to a small buffer
 * GoodSource: Set data pointer to a large buffer
 * Sink: memcpy
 *    BadSink : Copy data to string using memcpy
 * Flow Variant: 41 Data flow: data passed as an argument from one function to another in the same source file
 *
 * */

#include <string>
#include <iostream>
#define ALLOCA _alloca

#include <wchar.h>

void CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_badSink(wchar_t * data)
{
    {
        wchar_t dest[100];
        wmemset(dest, L'C', 100-1);
        dest[100-1] = L'\0'; /* null terminate */
        /* POTENTIAL FLAW: using memcpy with the length of the dest where data
         * could be smaller than dest causing buffer overread */
        memcpy(dest, data, wcslen(dest)*sizeof(wchar_t));
        dest[100-1] = L'\0';
        
    }
}

void CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_bad()
{
    #define ALLOCA _alloca
    wchar_t * data;
    wchar_t * dataBadBuffer = (wchar_t *)ALLOCA(50*sizeof(wchar_t));
    wchar_t * dataGoodBuffer = (wchar_t *)ALLOCA(100*sizeof(wchar_t));
    wmemset(dataBadBuffer, L'A', 50-1); /* fill with 'A's */
    dataBadBuffer[50-1] = L'\0'; /* null terminate */
    wmemset(dataGoodBuffer, L'A', 100-1); /* fill with 'A's */
    dataGoodBuffer[100-1] = L'\0'; /* null terminate */
    /* FLAW: Set data pointer to a small buffer */
    data = dataBadBuffer;
    CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_badSink(data);
}

void CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_goodG2BSink(wchar_t * data)
{
    {
        wchar_t dest[100];
        wmemset(dest, L'C', 100-1);
        dest[100-1] = L'\0'; /* null terminate */
        /* POTENTIAL FLAW: using memcpy with the length of the dest where data
         * could be smaller than dest causing buffer overread */
        memcpy(dest, data, wcslen(dest)*sizeof(wchar_t));
        dest[100-1] = L'\0';
        
    }
}

/* goodG2B uses the GoodSource with the BadSink */
static void goodG2B()
{
    #define ALLOCA _alloca
    wchar_t * data;
    wchar_t * dataBadBuffer = (wchar_t *)ALLOCA(50*sizeof(wchar_t));
    wchar_t * dataGoodBuffer = (wchar_t *)ALLOCA(100*sizeof(wchar_t));
    wmemset(dataBadBuffer, L'A', 50-1); /* fill with 'A's */
    dataBadBuffer[50-1] = L'\0'; /* null terminate */
    wmemset(dataGoodBuffer, L'A', 100-1); /* fill with 'A's */
    dataGoodBuffer[100-1] = L'\0'; /* null terminate */
    /* FIX: Set data pointer to a large buffer */
    data = dataGoodBuffer;
    CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_goodG2BSink(data);
}

void CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_good()
{
    goodG2B();
}


/* Below is the main(). It is only used when building this testcase on
 * its own for testing or for building a binary to use in testing binary
 * analysis tools. It is not used when compiling all the testcases as one
 * application, which is how source code analysis tools are tested.
 */


int main(int argc, char * argv[])
{
   
    CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_good();
   
    CWE126_Buffer_Overread__wchar_t_alloca_memcpy_41_bad();
   
    return 0;
}
