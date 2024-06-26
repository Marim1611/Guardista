/* TEMPLATE GENERATED TESTCASE FILE
Filename: CWE126_Buffer_Overread__malloc_char_loop_22b.c
Label Definition File: CWE126_Buffer_Overread__malloc.label.xml
Template File: sources-sink-22b.tmpl.c
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
extern int CWE126_Buffer_Overread__malloc_char_loop_22_badGlobal;

char * CWE126_Buffer_Overread__malloc_char_loop_22_badSource(char * data)
{
    if(CWE126_Buffer_Overread__malloc_char_loop_22_badGlobal)
    {
        /* FLAW: Use a small buffer */
        data = (char *)malloc(50*sizeof(char));
        if (data == NULL) {exit(-1);}
        memset(data, 'A', 50-1); /* fill with 'A's */
        data[50-1] = '\0'; /* null terminate */
    }
    return data;
}


