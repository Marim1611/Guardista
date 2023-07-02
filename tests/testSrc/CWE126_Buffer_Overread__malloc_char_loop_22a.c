/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE126_Buffer_Overread__malloc_char_loop_22a.c
Label Definition File: CWE126_Buffer_Overread__malloc.label.xml
Template File: sources-sink-22a.tmpl.c
*/
/*
 * @description
 * CWE: 126 Buffer Over-read
 * BadSource:  Use a small buffer
 * GoodSource: Use a large buffer
 * Sink: loop
 *    BadSink : Copy data to string using a loop
 * Flow Variant: 22 Control flow: Flow controlled by value of a global variable. Sink functions are in a separate file from sources.
 *
 * */


#include <wchar.h>
#include <cstring>
#include <cstdlib>


/* The global variable below is used to drive control flow in the source function */
int CWE126_Buffer_Overread__malloc_char_loop_22_badGlobal = 0;

char * CWE126_Buffer_Overread__malloc_char_loop_22_badSource(char * data);

void CWE126_Buffer_Overread__malloc_char_loop_22_bad()
{
    char * data;
    data = NULL;
    CWE126_Buffer_Overread__malloc_char_loop_22_badGlobal = 1; /* true */
    data = CWE126_Buffer_Overread__malloc_char_loop_22_badSource(data);
    {
        size_t i, destLen;
        char dest[100];
        memset(dest, 'C', 100-1);
        dest[100-1] = '\0'; /* null terminate */
        destLen = strlen(dest);
        /* POTENTIAL FLAW: using length of the dest where data
         * could be smaller than dest causing buffer overread */
        for (i = 0; i < destLen; i++)
        {
            dest[i] = data[i];
        }
        dest[100-1] = '\0';
        
        free(data);
    }
}


/* Below is the main(). It is only used when building this testcase on
 * its own for testing or for building a binary to use in testing binary
 * analysis tools. It is not used when compiling all the testcases as one
 * application, which is how source code analysis tools are tested.
 */

int main(int argc, char * argv[])
{
    /* seed randomness */
    

    
    CWE126_Buffer_Overread__malloc_char_loop_22_bad();
    
    return 0;
}
