#define ALLOCA _alloca
#define _CRT_SECURE_NO_DEPRECATE 1
#define _CRT_SECURE_NO_WARNING 1



#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h>
#include <limits.h>
#include <string.h>
#include <stdint.h>


#include <ctype.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <io.h> /* for open/close etc */

#include <new> // for placement new



/* classes used in some test cases as a custom type */
class TwoIntsClass 
{
    public: // Needed to access variables from label files
        int intOne;
        int intTwo;
};

class OneIntClass 
{
    public: // Needed to access variables from label files
        int intOne;
};


#define true 1
#define false 0


#define URAND31() (((unsigned)rand()<<30) ^ ((unsigned)rand()<<15) ^ rand())
// choose to produce a positive or a negative number. Note: conditional only evaluates one URAND31
#define RAND32() ((int)(rand() & 1 ? URAND31() : -URAND31() - 1))

/* rand only returns 15 bits, so we xor 5 calls together to get the full result (11 bits overflow, but that is okay) */
// shifting signed values might overflow and be undefined
#define URAND63() (((uint64_t)rand()<<60) ^ ((uint64_t)rand()<<45) ^ ((uint64_t)rand()<<30) ^ ((uint64_t)rand()<<15) ^ rand())
// choose to produce a positive or a negative number. Note: conditional only evaluates one URAND63
#define RAND64() ((int64_t)(rand() & 1 ? URAND63() : -URAND63() - 1))

/* struct used in some test cases as a custom type */
typedef struct _twoIntsStruct
{
    int intOne;
    int intTwo;
} twoIntsStruct;
