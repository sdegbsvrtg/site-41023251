// from https://stackoverflow.com/questions/6127503/shuffle-array-in-c
#include <stdio.h> //for printf()
#include <stdlib.h> //for srand() and rand()
#include <time.h> //for time()
#include <memory.h> //for memcpy()
// 作業, 請計算各數值在各位數出現的總數, 是否依照亂數機率出現?
// 作業, 請將此程式改用 Brython 編寫.

void main ()
{
    int elesize = sizeof (int);
    int i;
    int j;
    int r;
    int num = 10;
    int times = 50;
    int src [num];
    int tgt [num];
    
    srand ( (unsigned int) time (0) );
    
    for (j = 0; j < times; j++)
    {
        for (i = 0; i < num; src [i] = i++);
        
        for (i = num; i > 0; i --)
        {
            r = rand () % i;
            memcpy (&tgt [num - i], &src [r], elesize);
            memcpy (&src [r], &src [i - 1], elesize);
        }
        
        for (i = 0; i < num; printf ("%d ", tgt [i++] ) );
        printf("\n");
    }
}